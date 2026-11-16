# Как работает проект и как с ним работать

Полное практическое руководство: архитектура, этапы, команды, обслуживание.

---

## 1. Что это такое (одной схемой)

```
ИСТОРИЯ                          РЕАЛТАЙМ
smart.db (SQLite) ──┐            Polymarket WS + REST (Data API v2)
                    ├─► DuckDB ──► 1) рейтинг кошельков (математика, без LLM)
Data API v2 / Gamma ┘   (PM_DB_PATH)   2) трекер сделок «умных» кошельков
                                    3) фильтры (категория, размер, ликвидность, цена)
                                    4) новости (≤12, 5 источников)
                                    5) DeepSeek (промпт v4) → вердикт follow/skip
                                    6) paper-сессия → покупки/отчёт
                                       live (gated) → реальные ордера CLOB
```

Ключевые принципы:
- **Рейтинг считает только код** (LLM не участвует).
- **LLM только оценивает сделку** и возвращает JSON-вердикт; ордера она не ставит.
- **Paper-first**: реальные деньги — только после paper и с предохранителями.
- Все секреты — в `.env` (gitignored), в коде их нет.

---

## 2. Подготовка окружения

```bash
cd /home/user/project/polymarket/polymarket_wallet
.venv/bin/python -m scripts.ingest status      # что уже в базе
.venv/bin/python -m scripts.session --check    # проверка конфигурации (CSV, БД, paper/live)
bash scripts/verify/verify.sh                  # гейты кода (PASS 13 / FAIL 0)
```

### Основные переменные `.env`
| Переменная | Назначение |
|---|---|
| `PM_DB_PATH` | путь к DuckDB (сейчас `/mnt/hdd/pm/pm.duckdb`) |
| `PM_EXPORT_DIR` | куда пишутся CSV рейтинга (сейчас `/mnt/hdd/pm/exports`) |
| `PM_TEMP_DIR` | временный каталог DuckDB (spill) |
| `DEEPSEEK_API_KEY`, `DEEPSEEK_BASE_URL` | внешняя модель M5 |
| `PM_NEWS_ENABLED`, `PM_NEWS_MAX_ITEMS` | новости (вкл/выкл, до 12) |
| `PM_NEWS_GNEWS_KEYS`, `PM_NEWS_NEWSDATA_KEYS`, `PM_NEWS_CURRENTS_KEYS` | ключи новостных API (ротация) |
| `PM_REDDIT_CLIENT_ID`, `PM_REDDIT_CLIENT_SECRET` | Reddit (если заведёшь приложение) |
| `PM_ALLOW_NO_TRADES_PK=1` | для больших срезов без PK (см. §3) |
| `PM_LIVE_ENABLED`, `POLYMARKET_PRIVATE_KEY`, `PM_KILL_SWITCH_FILE` | live-режим (см. §8) |

---

## 3. База данных (DuckDB): откуда данные

### 3.1. Таблицы
| Таблица                       | Что внутри                                                                |
| ----------------------------- | ------------------------------------------------------------------------- |
| `markets`                     | рынки Polymarket (вопрос, токены, исходы, даты закрытия, winner)          |
| `trades`                      | сделки (wallet, condition_id, token_id, side, size, price, ts, trade_key) |
| `wallet_scores`               | рейтинг кошельков (grade X/A/B/C/D, trust, q-value и т.д.)                |
| `positions`, `positions_done` | позиции, восстановленные из сделок (для скоринга)                         |
| `backfill_state`              | чекпоинты догрузки новых данных                                           |
| `migration_state`             | чекпоинты миграции/среза                                                  |

### 3.2. Загрузка исторического среза (то, что уже сделано — 120 дней)
```bash
# продолжение/догрузка среза (резюмируемо, чекпоинт в .tmp/slice_progress_120d.json)
PYTHONPATH=$PWD .venv/bin/python -u scripts/slice_by_markets.py \
    --days 120 --resume --workers 1 --memory-limit 12GB
```
- `--days N` — окно «рынки, закрытые за последние N дней»;
- `--workers 1` — на HDD быстрее один поток (8 дают seek-thrashing);
- скрипт сам делает дедуп по `trade_key`, создаёт индексы и `CHECKPOINT`;
- PK на сотнях миллионов строк не строится (RAM) → `PM_ALLOW_NO_TRADES_PK=1` при скоринге.

Альтернатива — миграция из старого SQLite:
```bash
.venv/bin/python -m scripts.migrate_sqlite_to_duckdb --bulk --tables trades \
    --days 60 --memory-limit 12GB
```

### 3.3. Загрузка **новых** данных с Polymarket (ежедневно)
```bash
# рынки за последние дни (закрытые и открытые)
.venv/bin/python -m scripts.ingest markets --days 7 --closed
.venv/bin/python -m scripts.ingest markets --days 3 --open --min-volume 1000

# сделки по конкретному рынку
.venv/bin/python -m scripts.ingest trades --condition 0x... --limit 5000

# массовая догрузка: рынки + сделки за N дней (докачивает и продолжает при обрыве)
.venv/bin/python -m scripts.ingest backfill --days 7 --workers 4

# статус/чекпоинты
.venv/bin/python -m scripts.ingest status
```
Особенности:
- дедупликация по `trade_key` (повторный запуск безопасен);
- чёрный список шума (спорт/паралеи/микро-рынки) — `pm/ingest/blacklist.py`;
- rate-limit и ретраи встроены; `--dry-run` для проверки без записи.

### 3.4. Пересборка с нуля
Удалить БД и залить заново нельзя «одной кнопкой» из-за объёма; правильно:
```bash
rm /mnt/hdd/pm/pm.duckdb   # только если точно нужен полный ребилд
PYTHONPATH=$PWD .venv/bin/python scripts/slice_by_markets.py --days 120 --workers 1
```

---

## 4. Рейтинг кошельков (математика, без LLM)

```bash
# полный пересчёт по текущей БД
PM_ALLOW_NO_TRADES_PK=1 .venv/bin/python -m scripts.score --fresh --with-volume

# без выгрузки CSV / только часть рынков / другой каталог
PM_ALLOW_NO_TRADES_PK=1 .venv/bin/python -m scripts.score --fresh --limit-markets 5000
```
Что происходит:
1. восстанавливаются позиции из `trades` (по рынкам);
2. считаются метрики (P&L, ROI, win-rate, объём, концентрация и т.д.);
3. классификация (WASH/ARB/FLAT/MM/GENUINE), q-values, grades **X/A/B/C/D**, TrustScore;
4. CSV: `$PM_EXPORT_DIR/wallets_good_latest.csv` (+ датированная копия).

Как читать CSV: `wallet, grade, tier (whale/small), trust_score, edge, roi, pnl_usd, n_markets, n_trades, volume_usd, top_market_share, ...`.
Трекер по умолчанию берёт `X, A, B`.

Частота: раз в неделю или после крупной догрузки данных.

---

## 5. Реалтайм: трекер и shadow

### 5.1. Трекер (просто слушает сделки «умных»)
```bash
.venv/bin/python -m scripts.monitor --check           # проверить входные данные
.venv/bin/python -m scripts.monitor --max-seconds 300 # слушать 5 минут
.venv/bin/python -m scripts.monitor --queue-workers 4 --max-seconds 3600
```
Флаги: `--csv` (список кошельков), `--grades X,A,B`, `--only-buy`, `--no-ws/--feed`, `--max-seconds`, `--stats-interval`, `--json`.

### 5.2. Shadow (трекер + фильтры + модель + лог)
```bash
# 15 минут, без вызова модели (быстро/бесплатно)
.venv/bin/python -m scripts.shadow --max-seconds 900 --no-model

# с моделью (DeepSeek), до 20 оценок в минуту
.venv/bin/python -m scripts.shadow --max-seconds 3600 --max-evals-per-min 20
```
- Лог: `reports/verdicts.jsonl` — каждая сделка: фильтры (passed/reason), вердикт, latency, `orders_placed:false`;
- фильтры по умолчанию: категория (спорт/паралеи — мимо), размер ставки (`$10` и `0.25×медианы`), ликвидность/спред/проскальзывание, ценовая зона, дубли.

---

## 6. Новости (для оценки «картины»)

- Источники: **Google News RSS**, **Hacker News**, **GNews**, **NewsData**, **Currents**; Reddit — только с OAuth-ключом.
- Лимиты: **до 12 новостей**, ≤3 с одного источника, round-robin по источникам, свежесть ≤7 дней, snippet ≤200.
- Отключить: `PM_NEWS_ENABLED=0` в `.env`.
- Ключи — только в `.env`; ротация автоматическая; в логи ключи не попадают.
- Документация: [docs/NEWS.md](NEWS.md).

---

## 7. Оценка моделью (M5)

```bash
# одна сделка (файлы или JSON)
.venv/bin/python -m scripts.eval --trade trade.json --market market.json --book book.json --json

# dry-run: рендер промпта/валидация без вызова модели
.venv/bin/python -m scripts.eval --trade trade.json --market market.json --dry-run

# A/B на историческом наборе (v1/v2/v3/v4), с метриками
.venv/bin/python -m scripts.eval_set --limit 100 --seed 42 --prompt-version v4
```
Промпты: `prompts/trade_eval/v1..v4`; **по умолчанию v4** (12 новостей, группировка, приоритет первоисточников).
Модель возвращает строго JSON (10 полей), `orders_placed:false`.

---

## 8. Программа-сессия: «ввёл бюджет и время — она работает»

### 8.1. Paper (безопасно, деньги не тратятся)
```bash
.venv/bin/python -m scripts.session \
  --bankroll-usd 100 --duration 2h \
  --size-pct 2 --max-position-usd 10 --per-market-usd 25 --daily-cap-usd 50
```
- В консоль: `BUY(paper) <рынок> @ цена × shares ($размер) | wallet grade conf`;
- Ctrl+C — корректная остановка;
- Отчёт: `reports/session_report.md`, детальный лог `reports/session_<ts>.jsonl`;
- Флаги: `--no-model` (только фильтры), `--min-confidence`, `--min-price/--max-price`, `--grades`, `--json`.

### 8.2. Live (реальные деньги) — строго по чек-листу
```bash
.venv/bin/pip install py-clob-client
# .env: PM_LIVE_ENABLED=1, POLYMARKET_PRIVATE_KEY=0x..., (опц. CLOB creds)
.venv/bin/python -m scripts.session --live --i-understand-risk \
  --bankroll-usd 100 --duration 1h
```
Предохранители: bankroll ≤ **$300**, размер ≤ min($10, 2%, остаток по рынку/дню), **kill-switch**
(`echo stop > reports/KILL_SWITCH`), SIGINT=стоп, geoblock-проверка, аудит `reports/live_orders.jsonl`.
Подробно: [docs/LIVE.md](LIVE.md). **Сначала paper** (live без `reports/paper_report.md` не запустится).

---

## 9. MCP-сервер (инструменты для агентов)

```bash
.venv/bin/python mcp/pm_server.py     # stdio, 6 tools
```
Tools: `pm_get_market`, `pm_list_trades`, `pm_score_wallets`, `pm_get_watchlist`,
`pm_filter_trade`, `pm_evaluate_trade` (read-only БД, без ордеров).

---

## 10. Обслуживание и типовые сценарии

### Ежедневно
```bash
.venv/bin/python -m scripts.ingest backfill --days 1 --workers 4   # новые данные
.venv/bin/python -m scripts.shadow --max-seconds 3600              # сигналы
# или сессия: scripts.session --bankroll-usd 100 --duration 6h
```

### Еженедельно
```bash
PM_ALLOW_NO_TRADES_PK=1 .venv/bin/python -m scripts.score --fresh --with-volume
# свежий CSV → трекер/сессия подхватят его автоматически
```

### Проверки
```bash
.venv/bin/pytest -q                 # 681 passed, 8 skipped
.venv/bin/ruff check .
bash scripts/verify/verify.sh       # PASS 13 / FAIL 0 / WARN 0
```

### Частые проблемы
| Симптом | Решение |
|---|---|
| `database is locked` | идёт другой процесс (скоринг/миграция) — дождаться или остановить |
| `schema … PRIMARY KEY нет` | при больших срезах: `PM_ALLOW_NO_TRADES_PK=1` |
| Нет новостей (`news disabled`) | `PM_NEWS_ENABLED=1`, проверить ключи в `.env` |
| Live отказывает | `py-clob-client` не установлен / нет env / нет `--i-understand-risk` / нет paper-report |
| Рейтинг пустой | нет `wallets_good_latest.csv` — сначала `scripts.score` |
| Много `skip` | это норма: фильтры строгие; смотреть причины в `reports/verdicts.jsonl` |

---

## 11. Где что лежит
```
pm/ingest/     загрузка данных (Gamma, Data API v2)
pm/scoring/    рейтинг (без LLM)
pm/monitor/    трекер WS/REST
pm/filters/    фильтры сделок
pm/news/       новости (источники, отбор)
pm/analyze/    снапшот + DeepSeek + промпты
pm/exec/       live-исполнение (gated)
scripts/       CLI: ingest, score, monitor, shadow, session, eval, eval_set, slice_by_markets
mcp/           MCP-сервер
reports/       вердикты, сессии, paper/live-логи
docs/          этот гайд, NEWS, LIVE, decisions, SLICE_STATE
```




WALLETS_PER_CYCLE=120 \
POSITIONS_INTERVAL=7200 \
MAX_PAGES=7 \
MAX_POSITIONS_PER_CYCLE=600000 \
DAYS=10 \
bash install_and_run.sh




































![[Pasted image 20261116200959.png]]
![[Pasted image 20261116201011.png]]
![[Pasted image 20261116201021.png]]
![[Pasted image 20261116201107.png]]
![[Pasted image 20261116201120.png]]
![[Pasted image 20261116201154.png]]






![[Pasted image 20261116201242.png]]
![[Pasted image 20261116201249.png]]
![[Pasted image 20261116201337.png]]
![[Pasted image 20261116201402.png]]