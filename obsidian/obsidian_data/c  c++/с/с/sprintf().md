```c
} int main(){
    double width = 2.4, height = 0.76, depth = 3.14;
    char name[] = "Result";
    char info[100];
    const char format[] = "(%s: %.2f x %.2f x %.2f)";

    sprintf(info, format, name, width, height, depth);
    puts(info);

    return 0;
} 
...
(Result: 2.40 x 0.76 x 3.14)
```

преобразует числовые данные в строку

```c
int main(){
    int var_i = -115;
    char str_var[10];
    sprintf(str_var, "%d", var_i);
    puts(str_var); 

    return 0;
}  
-115
```

