```cpp
int main()
{
    int x = 0;
    x |= (1 << 1);
    x |= (1 << 3);
    x |= (1 << 4);
    x |= (1 << 8);
    x |= (1 << 29);
    for (int i = 0; i < 32; i++)
    {
        if (x & (1 << i))
            cout << i << " ";
    }
    return 0;
}
...
1 3 4 8 29 
```