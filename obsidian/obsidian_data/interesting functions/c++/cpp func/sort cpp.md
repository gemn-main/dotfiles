# сортировка вектора 

по возрастанию 
```cpp
vector<int> b = {2, 15, 51, 5, 1, 6, 1};
int arr[] = {1, 6, 1, 6, 2, 7, 1, 4, 7};
int main()
{
    sort(b.begin(), b.end());
    for (int x : b)
        cout << x << ' ';

    return 0;
}
...
1 1 2 5 6 15 51
```

по убыванию 
```cpp
vector<int> b = {2, 15, 51, 5, 1, 6, 1};
int arr[] = {1, 6, 1, 6, 2, 7, 1, 4, 7};
int main()
{
    sort(b.rbegin(), b.rend());
    for (int x : b)
        cout << x << ' ';

    return 0;
}
...
51 15 6 5 2 1 1 
```


# сортировка массива 

по возрастанию:
```cpp
int arr[] = {1, 6, 1, 6, 2, 7, 1, 4, 7};
int main()
{
    int n = sizeof(arr) / sizeof(*arr);
    sort(arr, arr + n);
    for (int x : arr)
        cout << x << ' ';

    return 0;
}
...
1 1 1 2 4 6 6 7 7 
```


по убыванию:
```cpp
int arr[] = {1, 6, 1, 6, 2, 7, 1, 4, 7};
int main()
{
    int n = sizeof(arr) / sizeof(*arr);
    sort(arr, arr + n, greater<int>());
    for (int x : arr)
        cout << x << ' ';

    return 0;
}
1 1 1 2 4 6 6 7 7
```
`std::greater<int>()` передается как компаратор, заставляя `std::sort()` сортировать по убыванию.