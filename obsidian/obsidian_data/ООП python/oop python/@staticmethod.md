```python
class Point:  
    @staticmethod  
    def test(c, d):  
        return c * d  
  
    def __init__(self, a, b):  
        self.x = a  
        self.y = b  
  
    def get_coord(self):  
        return self.x, self.y  
  
  
b = Point(1, 3)  
res = Point.get_coord(b)  
print(res)  
print(Point.test(6, 3))
```
`@staticmethod` работает отдельно и не имеет связи с классом, его атрибутами и другими методами 
В него передаются переменные отдельно и он выполняет функцию 