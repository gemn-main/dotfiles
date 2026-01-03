Метод `startswith()` в Python используется для проверки того, начинается ли строка с определённого префикса.

1. Проверка начала строки
```python
text = "Hello, world!"
print(text.startswith("Hello"))  # True
print(text.startswith("world"))  # False
```


2. Проверка с указанием диапазона
```python
text = "Hello, world!"
print(text.startswith("world", 7))  # True
print(text.startswith("Hello", 7))  # False
```
проверка идет от 7 элемента 