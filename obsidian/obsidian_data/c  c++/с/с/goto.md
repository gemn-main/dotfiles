безусловный переход по метке
```c
int main(void)
{
    int a;
    int o = 0;
    for(int i = 0; i<=10; i++){
        if(i == 7)
            goto exit;
        o += i;
        a = i+1;
    }
    exit: printf("limint i is %d, sum is %d", a, o);
    return 0;
}
limint i is 7, sum is 21
```
