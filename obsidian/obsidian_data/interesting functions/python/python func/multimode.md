В Python термин **multimode** относится к функции `statistics.multimode()` из модуля `statistics`. Она используется для нахождения всех наиболее часто встречающихся значений (мод) в списке.
```python
import statistics

data = [1, 2, 2, 3, 4]
print(statistics.multimode(data))  # [2]
```

```python
import statistics

data = [1, 1, 2, 2, 3, 4]
print(statistics.multimode(data))  # [1, 2]
```

```python
import statistics

data = "banana"
print(statistics.multimode(data))  # ['a', 'n']
```



