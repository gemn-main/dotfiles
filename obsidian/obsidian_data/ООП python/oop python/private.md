```python
class Point:  
    def __init__(self, x=0, y=0):  
        self.__x = x  
        self.__y = y  
  
    def set_coord(self,x, y):  
            self.__x = x  
            self.__y = y  
  
    def get_coord(self):  
        return self.__x, self.__y  
  
pt = Point(1, 2)  
print(pt.__x, pt.__y)

...
Erorr...
```
служит для обращения только внутри класс 
Чтобы с ними взаимодействовать и нудны сеттеры и геттеры

режим private модно использовать и для функций в классе 
