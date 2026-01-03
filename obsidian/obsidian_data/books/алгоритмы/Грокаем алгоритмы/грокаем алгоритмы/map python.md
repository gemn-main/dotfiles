```python
arr1 = [1, 2, 3, 4, 5]
def loli(x):
    i = 3 * x
    return i
arr2 = map(loli, arr1)
print(list(arr2))

...
[3, 6, 9, 12, 15]
```

применяет функцию к каждому элементу массива 