```c
int main(void)
{
    int code = 23;
    int enter;

    do {
        printf("enter the code: ");
        scanf("%d", &enter);
    } while(enter != code);

    printf("ok!");
    return 0;
}
```

выполняется действие do пока верно условие в while 