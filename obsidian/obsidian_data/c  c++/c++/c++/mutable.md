но при этом операторе из все равно нельзя изменять чтобы это изменить надо добавить mutable после скобок
```cpp
const int lolik = 123;
int main()
{
    int bobik = 234;
    int kakashka = 12;

    auto r = [=]() mutable
    {
	    bobik += 2;
        cout << lolik << endl;
        cout << bobik << endl;
        cout << kakashka << endl;
    };
    r();

    return 0;
}
...
123
236
12
```
