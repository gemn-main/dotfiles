```c
int main(){
    char str[] = "Abrakadabra";
    char *prt = strrchr(str, 'a');
    printf("str = %p\nptr = %p\n", str,prt);
    if (prt != NULL)
        printf("*prt = %c\n", *prt);

    return 0;
}  
...
str = 0062ff10
ptr = 0062ff1a
*prt = a
```
поиск справа налево 