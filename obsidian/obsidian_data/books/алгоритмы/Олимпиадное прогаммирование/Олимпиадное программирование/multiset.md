в отличие от [[set cpp|set]] один и тот же элемент может входить несколько раз
```cpp
int main()
{
    multiset<int> s;
    s.insert(12);
    s.insert(12);
    s.insert(1);
    s.insert(9);
    s.insert(1233);
    for (auto x : s)
        cout << x << ' '; // 1 9 12 12 1233
    cout << '\n';
    cout << s.count(12) << endl; // 2
    s.erase(12); // если надо уданиль 1 элемент: s.erase(s.find(12)) 
    cout << s.count(12) << endl; // 0
    return 0;
}
...
1 9 12 12 1233 
2
0
```
