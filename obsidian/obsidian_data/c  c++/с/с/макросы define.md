```c
#define NINE 9
#define PRINT_D printf("num = %d\n", num)
#define EXIT "go away\n"
#define FORMAT "%d\n"

int main(void)
{
    int num = NINE;
    PRINT_D;
    printf(EXIT);
    printf(FORMAT, num);
    return 0;
}
```
после define можно прописывать разные операции 


переопределение макроса:
```go
#define NINE 9
#undef NINE
#define NINE 4.5 * 2
```


функции в макросах:
```c
#define NINE(a,b) ((a)*2) + ((b)*2)

int main(void)
{
    int res = NINE(12,2);
    printf("res = %d", res);
    return 0;
}
...
res = 28
```
 
[[sharp and two sharp]] 


