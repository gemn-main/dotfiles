```python
class Point:  
    a = 21  
    color = 'blue'  
  
del Point.a  
print(Point.__dict__)

...
{'__module__': '__main__', 'color': 'blue', '__dict__': <attribute '__dict__' of 'Point' objects>, '__weakref__': <attribute '__weakref__' of 'Point' objects>, '__doc__': None}
```

удаляет атрибут из указанного пространства 