```c
#include <stdio.h>
int main(void)
{
    int s = 0;
    int x = 131;
    while (x > 0) {
        s += x * x;
        x--;
    }
    printf("%d\n", s);
    return 0;
}
...
757966
```
проводит код пока верно условие 