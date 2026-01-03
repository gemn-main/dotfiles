пропуск итерации тела цикла
```c
int main(void)
{
    int o, a;
    int i;
    while (scanf("%d %d", &o, &a))
    {
        if (a == 0 || o == 0){
            break;
        }
        if (a < 0 || o < 0){
            continue;
        }
        i =+ a + o;
    }
    printf("res = %d", i);
    return 0;
}

...
1 2 
-2 1
0 1
res = 3
```
