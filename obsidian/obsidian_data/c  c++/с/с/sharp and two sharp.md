one `#`
```c
#define TEXT(a,b) "lolik = " #a " bobik = " #b
int main(void)
{
    printf(TEXT(12, 31));
    return 0;
}
...
lolik = 12 bobik = 31
```
переводит значение в строку



two `##`
```c
#define X_N(N) x ## N

int main(void)
{
    int x1 = 12, x2 = 4;
    printf("%d", X_N(2));
    return 0;
}
...
4
```
скелет `x ## N`
N = 2  (`X_N(2)`)
x - символ
`##` = склейка 

=====
x  + 2   =  x2
x2 = 4


