досрочное прерывание работы цикла 
```c
int main(void)
{
    int o, a;
    int i;
    while (scanf("%d %d", &o, &a))
    {
        if (a < 0 || o < 0){
            break;
        }
        i =+ a + o;
    }
    printf("res = %d", i);
    return 0;
}

...
1 2 
-1 2
res = 3
```