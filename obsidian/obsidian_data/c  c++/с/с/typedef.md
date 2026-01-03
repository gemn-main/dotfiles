```c
typedef unsigned long long BIG;

int main()
{
    BIG num = 112351235;
    printf("size = %d", sizeof(BIG));
    return 0;
}

...
size = 8
```
название типу


также можно назначать имена структурам
```c
typedef struct tag_vector
{
    double x, y;
} vector;
```