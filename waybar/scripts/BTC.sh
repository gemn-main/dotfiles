#!/usr/bin/env bash
# btc-price.sh — цена BTC для Waybar
# Зависимости: curl, bc (обычно уже установлены)
#
# Использование:
#   ./btc-price.sh [ВАЛЮТА] [СИМВОЛ]
#   ./btc-price.sh USD '$'
#   ./btc-price.sh EUR '€'
#   ./btc-price.sh RUB '₽'

CURRENCY="${1:-USD}"
SYMBOL="${2:-$}"

RESPONSE=$(curl -sf --max-time 5 \
  "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=${CURRENCY,,}&include_24hr_change=true")

if [[ -z "$RESPONSE" ]]; then
  printf '{"text": "₿ --", "tooltip": "ERROR connect", "class": "error"}\n'
  exit 0
fi

PRICE=$(echo "$RESPONSE" | grep -oP '"'"${CURRENCY,,}"'"\s*:\s*\K[0-9]+(\.[0-9]+)?')
CHANGE=$(echo "$RESPONSE" | grep -oP '"'"${CURRENCY,,}"'_24h_change"\s*:\s*\K-?[0-9]+(\.[0-9]+)?')

if [[ -z "$PRICE" ]]; then
  printf '{"text": "₿ ??", "tooltip": "error API", "class": "error"}\n'
  exit 0
fi

PRICE_FMT=$(printf "%'.0f" "$PRICE")
CHANGE_FMT=$(printf "%.2f" "$CHANGE")

if (( $(echo "$CHANGE > 0" | bc -l) )); then
  ARROW="▲"; CLASS="up"
elif (( $(echo "$CHANGE < 0" | bc -l) )); then
  ARROW="▼"; CLASS="down"
else
  ARROW="●"; CLASS="neutral"
fi

TEXT="₿ ${SYMBOL}${PRICE_FMT}  ${ARROW}${CHANGE_FMT}%"
TOOLTIP="Bitcoin (CoinGecko)\nЦена: ${SYMBOL}${PRICE_FMT} ${CURRENCY^^}\n24ч:  ${ARROW}${CHANGE_FMT}%\nОбновлено: $(date '+%H:%M:%S')"

printf '{"text": "%s", "tooltip": "%s", "class": "%s"}\n' \
  "$TEXT" "$TOOLTIP" "$CLASS"
