```c
int main()
{
    int a = 2;
    {
        int b = 1;
        printf("a = %d, b = %d\n", a, b);
    }
    printf("%d", a);
    return 0;
}
...
a = 2, b = 1
2
```