```cpp
struct len_xy
{
    int x, y;
    double length() { return sqrt(x * x + y * y); }
};

int main()
{
    len_xy k{1, 5};
    len_xy k2{2, 4};
    cout << k.length() << endl;
    cout << k2.length() << endl;
    return 0;
}
...
5.09902
4.47214
```