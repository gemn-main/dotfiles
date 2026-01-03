 ![[Pasted image 20241120205354.png]]
по сути сокращенная запись [[цикл while|цикла while]] 

```c
int main(void)
{
    int n = 5;
    int i, p;
    for (i = 1, p=1; i<= n; i++)
        p = p * i;
        
    printf("p = %d", p);
    return 0;
}
...
120
```
`i = 1` = инициализация переменных это можно делать и за циклом:
```c
int main(void)
{
    int n = 5;
    int i = 1, p= 1;
    for (i, p; i<= n; i++)
        p = p * i;
        
    printf("p = %d", p);
    return 0;
}
```

`i<=n` - условие что бы выполнялся цикл 


`i++` - изменение значения


запись в 1 строку:
```c
int main(void)
{
    int n = 5;
    int i = 1, p= 1;
    for (i, p; i<= n;p = p *i,i++)
        { }
        
    printf("p = %d", p);
    return 0;
}
```