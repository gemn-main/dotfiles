```c
int main(){
    char str_cat[100] = "legenda";
    char str[8] = "Ivan";

    strcat(str, str_cat);   
    puts(str);
}
...
Ivanlegenda
```
просто добавляет строку к строке не смотря на размер