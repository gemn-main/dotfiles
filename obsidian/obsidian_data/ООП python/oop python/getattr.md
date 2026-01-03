```python
class Point:  
    a = 21  
    color = 'blue'  
  
print(getattr(Point, 'b', False))

...
False
```

Возвращается 3 элемент если указанный атрибут не найден