```c
int main(){
    char s1[] = "polik";
    char s2[] = "popka";
    int  res = strncmp(s1, s2, 2);
    printf("%d", res);

    return 0;
}  
...
0
```
сравнивает по первым n символам