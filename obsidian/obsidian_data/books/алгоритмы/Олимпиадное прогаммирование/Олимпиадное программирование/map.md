создает пары ключ-значение 
```cpp
int main()
{
    map<string, int> m;
    m["monkey"] = 5;
    m["banana"] = 51;
    m["lolik"] = 1;
    cout << m["monkey"] << '\n'; // 5
    cout << m["kakashka"] << '\n'; // 0
    for (auto x : m)
        cout << x.first << ' ' << x.second << '\n';
    return 0;
}
...
5
0
banana 51
kakashka 0
lolik 1
monkey 5
```
`map` врем. слож. = O(log n)
`unordered_map` = O(1)