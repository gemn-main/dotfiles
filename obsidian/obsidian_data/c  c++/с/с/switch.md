```c
int main() {
    int item;
    printf("1.lolik\n"
           "2.bobik\n"
           "3.llooll\n"
           "4.hi scufindiai!\n"
           "5.lehenda\n");

    if(scanf("%d", &item) != 1 ) {
        printf("Error input");
        return 0;
    }
    switch (item){
    case 1:
        printf("1.lolik\n");
    case 2:
        printf("2.bobik\n");
    case 3:
        printf("3.llooll\n");
    case 4:
        printf("4.hi scufindiai!\n");
    case 5:
        printf("5.lehenda\n");
    }
    
    return 0;
}
...
1.lolik
2.bobik
3.llooll
4.hi scufindiai!
5.lehenda
3
3.llooll
4.hi scufindiai!
5.lehenda
```


если ввести 3 то выполняться все операторы после метки 3
``3.llooll
``4.hi scufindiai!
``5.lehenda 


что бы работала только нужная метка на поставить `break`
```c
int main() {
    int item;
    printf("1.lolik\n"
           "2.bobik\n"
           "3.llooll\n"
           "4.hi scufindiai!\n"
           "5.lehenda\n");

    if(scanf("%d", &item) != 1 ) {
        printf("Error input");
        return 0;
    }
    switch (item){
    case 1:
        printf("1.lolik\n");
        break;
    case 2:
        printf("2.bobik\n");
        break;
    case 3:
        printf("3.llooll\n");
        break;
    case 4:
        printf("4.hi scufindiai!\n");
        break;
    case 5:
        printf("5.lehenda\n");
        break;
    }
    return 0;
...
1.lolik
2.bobik
3.llooll
4.hi scufindiai!
5.lehenda
2
2.bobik
}
```

подряд идущие метки:
```c
int main() {
    char item;
    if(scanf("%c", &item) != 1 ) {
        printf("Error input");
        return 0;
    }
    switch (item){
    case 'o':
    case 'O':
        printf("Symbol O or o");
    }

    return 0;
}
```


default - если не сработала не одна  из меток:
```c
int main() {
    char item;
    if(scanf("%c", &item) != 1 ) {
        printf("Error input");
        return 0;
    }
    switch (item){
    case 'o':
    case 'O':
        printf("Symbol O or o");

    default:
        printf("no o or O");
        break;
    }
    return 0;
}
```
