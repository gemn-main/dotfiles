В Python функция `reversed()` используется для создания итератора, который перебирает элементы последовательности в обратном порядке

```python
lst = [1, 2, 3, 4]
rev_lst = reversed(lst)
print(list(rev_lst))  # [4, 3, 2, 1]
```

```python
for char in reversed("Python"):
    print(char, end=" ")  # n o h t y P
```
