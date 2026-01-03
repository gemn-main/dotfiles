```c
#include "tmp/printf.h"

int main(void)
{
    printf("hello world");
    return 0;
}
...
hello world
```
в `tmp/printf.h`
```c
int printf(const char *format, ...);
```

include - подставляет текст из файла 
запись равноценна:
```c
int printf(const char *format, ...);
int main(void)
{
    printf("hello world");
    return 0;
}
...
hello world
```