```c
int get_p(int width, int height)
{
    int p =  2 * (width + height);
    return p;
}

int main()
{
    int width = 12;
    int height = 122;
    int o = get_p(width, height);
    printf("%d", o);

    return 0;
}  
```

`int` - тип возвращаемого значения, если не возвращается то void
`get_p` - название
`()` - значения который принимает функция. Если таких не то пошиться void 
`return` - то что возвращает функция 

[[прототипы функций]] 

[[функции с произвольным числом параметров]] 