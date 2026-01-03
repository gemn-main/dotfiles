```python
from functools import reduce
arr1 = [1, 2, 3, 4, 5]
arr2 = reduce(lambda x, y: x+y, arr1)
print(arr2)

...
15
```

преобразует массив в один элемент 