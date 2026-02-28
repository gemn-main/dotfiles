# Скачать и запустить официальный контейнер
`docker pull clickhouse/clickhouse-server:latest`

```
docker run -d --name clickhouse-server \
  -p 8123:8123 \   # HTTP интерфейс
  -p 9000:9000 \   # TCP интерфейс (для клиентов)
  -p 9009:9009 \   # Интерфейс для interserver
  clickhouse/clickhouse-server:lates
```  
  
# Использование Docker volume (для сохранения данных)
```
docker run -d --name clickhouse-server \  
  -p 8123:8123 -p 9000:9000 \  
  -v clickhouse-data:/var/lib/clickhouse \  
  clickhouse/clickhouse-server:latest
```

# Запуск
```bash
docker start clickhouse
docker exec -it clickhouse clickhouse-client
```
`docker exec` → выполнить команду внутри контейнера
`-it` → интерактивный режим + терминал
`clickhouse` → имя контейнера
`clickhouse-client` → запускаем клиент ClickHouse внутри контейнера

# Подключаемся к серверу:
`clickhouse-client --host 127.0.0.1 --port 9000`

# Работа с базами данных
```
-- Создать базу  
CREATE DATABASE test_db;  
  
-- Показать базы  
SHOW DATABASES;  
  
-- Использовать базу  
USE test_db;  
  
-- Удалить базу  
DROP DATABASE test_db;

```


# Работа с таблицами
```
Создать таблицу 
CREATE TABLE users (  
    id UInt32,  
    name String,  
    age UInt8  
) ENGINE = MergeTree()  
ORDER BY id;  
  
-- Показать таблицы  
SHOW TABLES;  
  
-- Вставка данных  
INSERT INTO users VALUES (1, 'Alice', 25), (2, 'Bob', 30);  
  
-- Выборка данных  
SELECT * FROM users;  
  
-- Удаление таблицы  
DROP TABLE users;
```

### `ENGINE = MergeTree()`
* MergeTree — самый популярный и универсальный движок.

### `ORDER BY id`
- Это говорит ClickHouse, по какому столбцу хранить данные на диске.

### `INSERT INTO users VALUES (1, 'Alice', 25), (2, 'Bob', 30); `
- `INSERT INTO users` → говорим серверу, что вставляем данные в таблицу `users`.
- `(1, 'Alice', 25)` → первая строка данных: `id=1, name='Alice', age=25`.


# Базовые типы данных
- `UInt8`, `UInt16`, `UInt32`, `UInt64`
- `Int8`, `Int16`, `Int32`, `Int64`    
- `Float32`, `Float64`
- `String`
- `Date`, `DateTime`
- `Array(T)`


### 1️⃣ `SELECT count(*) FROM users;`
- **Что делает:** считает **общее количество строк** в таблице `users`
- **Пример результата:** если в таблице 2 строки → вернёт `2`.
---

### 2️⃣ `SELECT avg(age) FROM users;`
- **Что делает:** вычисляет **среднее значение колонки `age`**.
- **Пример:** если есть 25 и 30 → `(25+30)/2 = 27.5`.
---

### 3️⃣ `SELECT * FROM users WHERE age > 25;`
- **Что делает:** выбирает **все строки**, где возраст больше 25.
- **Пример результата:** если есть Alice 25 и Bob 30 → вернётся только Bob.
---

### 4️⃣ `SELECT name, age FROM users ORDER BY age DESC LIMIT 5;`
- **Что делает:**
    1. Берёт колонки `name` и `age` (не все колонки).
    2. Сортирует строки по `age` **по убыванию** (DESC = от большего к меньшему).
    3. Показывает только первые 5 строк (`LIMIT 5`).
- **Пример:** если в таблице 2 человека → выведет Bob 30, Alice 25.



## 6. Полезные Docker команды для ClickHouse
```
# Список контейнеров  
docker ps  
  
# Остановить контейнер  
docker stop clickhouse-server  
  
# Запустить контейнер  
docker start clickhouse-server  
  
# Подключиться в контейнер  
docker exec -it clickhouse-server bash  
  
# Удалить контейнер  
docker rm -f clickhouse-server
```
