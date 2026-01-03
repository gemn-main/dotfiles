```python
class MyClass:  
    def __del__(self):  
        print("Object is being deleted")  
  
obj = MyClass()  
del obj

...
Object is being deleted
```
Если объект удаляется (например, с помощью команды `del` или когда на него больше не остается ссылок), метод `__del__` будет вызван автоматически.