```python
class Point:  
    @classmethod  
    def test(cls, arg):  
        return arg == 0  
  
    def __init__(self, a, b):  
        self.x = a  
        self.y = b  
  
    def get_coord(self):  
        return self.x, self.y  
  
  
b = Point(1, 3)  
res = Point.get_coord(b)  
print(res)  
print(Point.test(0))
```
Методы, декорированные с помощью `@classmethod`, работают отдельно от конкретных экземпляров класса и имеют доступ только к самому классу. Они могут изменять переменные класса, но не имеют прямого доступа к данным, которые передаются при создании **экземпляра** (через конструктор `__init__`)

То есть при создании b не надо указывать arg. Это указывается отдельно при надобности  