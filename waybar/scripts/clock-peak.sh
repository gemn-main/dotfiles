#!/usr/bin/env bash
# clock-peak.sh — часы для Waybar с краткой подсказкой о пиковых часах DeepSeek API.
#
# Тултип: "<true|false> <часы до смены>h", например "false 12.3h".
#
# Политика цен (https://api-docs.deepseek.com/quick_start/pricing):
#   Пиковые часы: Пн–Пт, 01:00–04:00 и 06:00–10:00 UTC
#                 (= 09:00–12:00 и 14:00–18:00 по Пекину, UTC+8).
#   Всё остальное — не пик: ночь, выходные и государственные праздники КНР
#   целиком (включая «отработочные» выходные). Непиковая цена вдвое ниже
#   пиковой, то есть в пик платим ×2.
#
# Вывод — JSON для custom-модуля Waybar:
#   text    — время ЧЧ:ММ (как у штатного модуля clock)
#   tooltip — например "false 12.3h"
#   class   — peak / offpeak
#
# Для тестов можно подменить текущий момент: CLOCK_PEAK_NOW=<epoch>.

set -u

# ---------------------------------------------------------------------------
# Праздники КНР (даты по Пекину = UTC+8). Постановления:
#   2026 — 国办发明电〔2025〕7号, 2027 — 国办发明电〔2026〕10号.
# Диапазон «с ... по ...» считается полностью непиковым.
# Когда появится расписание 2028 года — просто добавьте строки ниже.
# ---------------------------------------------------------------------------
HOLIDAY_RANGES=(
  "2026-01-01 2026-01-03"  # 元旦       (New Year)
  "2026-02-15 2026-02-23"  # 春节       (Spring Festival)
  "2026-04-04 2026-04-06"  # 清明节     (Qingming)
  "2026-05-01 2026-05-05"  # 劳动节     (Labour Day)
  "2026-06-19 2026-06-21"  # 端午节     (Dragon Boat)
  "2026-09-25 2026-09-27"  # 中秋节     (Mid-Autumn)
  "2026-10-01 2026-10-07"  # 国庆节     (National Day)
  "2027-01-01 2027-01-03"  # 元旦       (New Year)
  "2027-02-05 2027-02-13"  # 春节       (Spring Festival)
  "2027-04-03 2027-04-05"  # 清明节     (Qingming)
  "2027-05-01 2027-05-05"  # 劳动节     (Labour Day)
  "2027-06-09 2027-06-09"  # 端午节     (Dragon Boat)
  "2027-09-15 2027-09-15"  # 中秋节     (Mid-Autumn)
  "2027-10-01 2027-10-07"  # 国庆节     (National Day)
)

# Пиковые окна: секунды от начала суток UTC.
PEAK_WINDOWS=("3600 14400" "21600 36000")  # 01:00–04:00, 06:00–10:00 UTC

# ---------------------------------------------------------------------------
# Утилиты
# ---------------------------------------------------------------------------

# Дни с 1970-01-01 для гражданской даты (алгоритм Hinnant).
days_from_civil() {
  local y=$1 m=$2 d=$3 era yoe mp doy doe
  if (( m <= 2 )); then y=$(( y - 1 )); fi
  era=$(( y / 400 ))
  yoe=$(( y - era * 400 ))
  if (( m > 2 )); then mp=$(( m - 3 )); else mp=$(( m + 9 )); fi
  doy=$(( (153 * mp + 2) / 5 + d - 1 ))
  doe=$(( yoe * 365 + yoe / 4 - yoe / 100 + doy ))
  echo $(( era * 146097 + doe - 719468 ))
}

# "YYYY-MM-DD" -> день; результат в REPLY.
parse_day() {
  local s=$1 rest
  rest=${s#*-}
  REPLY=$(days_from_civil \
    $(( 10#${s%%-*} )) \
    $(( 10#${rest%%-*} )) \
    $(( 10#${rest#*-} )) )
}

# Подготовить праздники как пары [начало, конец] в днях.
HOL_FROM=()
HOL_TO=()
for _range in "${HOLIDAY_RANGES[@]}"; do
  read -r _from _to <<< "$_range"
  parse_day "$_from"; HOL_FROM+=("$REPLY")
  parse_day "$_to";   HOL_TO+=("$REPLY")
done
unset _range _from _to REPLY

# Праздник ли это (день по UTC; во время пиковых окон дата UTC = дата по Пекину).
is_holiday() {
  local day=$1 i
  for i in "${!HOL_FROM[@]}"; do
    if (( day >= HOL_FROM[i] && day <= HOL_TO[i] )); then
      return 0
    fi
  done
  return 1
}

# Пиковое ли время. $1 — epoch. Возврат: 0 — пик, 1 — не пик.
is_peak() {
  local t=$1 day sod dow w
  day=$(( t / 86400 ))
  sod=$(( t % 86400 ))
  dow=$(( (day + 4) % 7 ))            # 0 = воскресенье
  if (( dow == 0 || dow == 6 )); then
    return 1                          # выходные — всегда не пик
  fi
  if is_holiday "$day"; then
    return 1                          # праздники КНР — всегда не пик
  fi
  for w in "${PEAK_WINDOWS[@]}"; do
    if (( sod >= ${w%% *} && sod < ${w##* } )); then
      return 0
    fi
  done
  return 1
}

# Следующая смена статуса: $1 — epoch, $2 — текущий статус (0/1).
next_change() {
  local now=$1 cur=$2 day k b t np
  day=$(( now / 86400 ))
  for (( k = 0; k <= 10; k++ )); do
    for b in 3600 14400 21600 36000; do
      t=$(( (day + k) * 86400 + b ))
      if (( t <= now )); then
        continue
      fi
      if is_peak "$t"; then np=1; else np=0; fi
      if (( np != cur )); then
        echo "$t"
        return 0
      fi
    done
  done
  return 1
}

# ---------------------------------------------------------------------------
# Сборка вывода: тултип — только "true/false" и часы до смены, вроде "false 12.3h".
# ---------------------------------------------------------------------------

now=${CLOCK_PEAK_NOW:-$(date +%s)}
if is_peak "$now"; then cur=1; else cur=0; fi
next=$(next_change "$now" "$cur") || next=""

if (( cur )); then
  flag="true"
  class="peak"
else
  flag="false"
  class="offpeak"
fi

# Часы до смены с точностью до 0.1, с округлением.
tenths=0
if [[ -n "$next" ]]; then
  tenths=$(( ((next - now) * 10 + 1800) / 3600 ))
fi

ICON=$(printf '\uf017')
clock_text=$(date -d "@$now" +%H:%M)
text="$ICON $clock_text"
tooltip="${flag} $(( tenths / 10 )).$(( tenths % 10 ))h"

printf '{"text": "%s", "tooltip": "%s", "class": "%s"}\n' "$text" "$tooltip" "$class"
