Метод `findall` в Python используется в модуле `re` (регулярных выражений) для поиска всех непересекающихся совпадений шаблона в строке. Возвращает список всех найденных совпадений.

```python
re.findall(pattern, string, flags=0)
```
### Аргументы:

- **`pattern`**: шаблон для поиска (регулярное выражение).
- **`string`**: строка, в которой производится поиск.
- **`flags`**: необязательный параметр для изменения поведения поиска (например, `re.IGNORECASE`, `re.MULTILINE` и др.).

---

```python
import re

text = "The rain in Spain"
result = re.findall("ain", text)
print(result)  # Вывод: ['ain', 'ain']
```


#### Поиск с учетом регистра:

```python
text = "The Rain in Spain"
result = re.findall("ain", text)
print(result)  # Вывод: ['ain']

# С игнорированием регистра:
result = re.findall("ain", text, re.IGNORECASE)
print(result)  # Вывод: ['ain', 'ain']
```


поиск чисел:
```python
text = "My phone numbers are12345 and67890."
result = re.findall(r"\d+", text)
print(result)  # Вывод: ['12345', '67890']
```


#### Поиск с группами:

Если в регулярном выражении используются группы, результатом будет список кортежей:
```python
text = "John: 25, Alice: 30"
result = re.findall(r"(\w+): (\d+)", text)
print(result)  # Вывод: [('John', '25'), ('Alice', '30')]
```



---
### Отличие от других методов модуля `re`:

- `findall` возвращает все совпадения сразу.
- `search` находит только первое совпадение.
- `match` проверяет совпадение только в начале строки.
- `finditer` возвращает итератор, а не список.
