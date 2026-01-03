```python
class Point:  
    color = 'blue'  
    circle = 2  
  
    def __init__(self, a, b):  
        self.x = a  
        self.y = b  
  
  
pt = Point(2, 1)   
print(pt.__dict__)

...
{'x': 2, 'y': 1}
```

``__init__`` автоматически применяет функцию а экземпляру класса 
но если функция хранит переменные их надо указывать при создании экземпляра класса ``pt = Point(2, 1)``  