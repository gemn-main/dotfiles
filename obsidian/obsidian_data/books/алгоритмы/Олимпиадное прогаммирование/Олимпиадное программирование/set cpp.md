все элементы автоматически сортируются 
```cpp
int main()
{
    set<int> s;
    s.insert(12); 
    s.insert(1);
    s.insert(9);
    cout << s.count(12) << '\n';
    s.erase(12);
    cout << s.count(12) << endl;
    return 0;
}
...
1
0
```