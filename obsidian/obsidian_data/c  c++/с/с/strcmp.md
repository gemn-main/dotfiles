```c
int main(){
    char s1[10] = "Hello";
    char s2[12] = "Hello";
    int res =  strcmp(s1, s2);
    printf("%d", res);

    return 0;
}  
...
0
```
просто сравнивает 2 строки
если они равны возвращает 0  