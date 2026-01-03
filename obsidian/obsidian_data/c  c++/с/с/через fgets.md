```c
int main(){
    char str[10];
    fgets(str, sizeof(str), stdin);
    puts(str);
    return 0;
}  
```

`sizeof(str)` - указывает сколько данных читать fgets сам добавляет \0 в конце 
`stdin` - поток 