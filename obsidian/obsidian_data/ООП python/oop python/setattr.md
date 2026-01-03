```python
class Point:  
    a = 21  
    color = 'blue'  
  
  
setattr(Point, 'lolik', 'True')  
print(Point.lolik)

...
True
```

добавляет или изменяет указанный объект(lolik) со значение (True) из указанного пространства(Point)