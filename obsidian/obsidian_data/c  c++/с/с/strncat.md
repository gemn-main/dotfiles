```c
int main(){
	char str_cat[100] = "legenda";
    char str[8] = "Ivan";
    
    size_t max_add = sizeof(str) -strlen(str) -1;
    strncat(str, str_cat,max_add);
    str[sizeof(str)-1] = '\0';
    puts(str); 
}  
...
Ivanleg
```
1. находим сколько есть свободных байт оставляя место под `\0` 
2. объединяем строки указывая макс значение для символов
3. добавляем в конец строки символ конца