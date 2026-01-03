импорт элементов пространства имен 
```cpp
using std::cin;
using std::cout;
using std::endl;
int main()
{
    int age;
    cin >> age;
    cout << "hello! Your age is " << age << endl;
    return 0;
}
...
154
hello! Your age is 154
```


импорт всего пространства имен:
```cpp
using namespace std;
```