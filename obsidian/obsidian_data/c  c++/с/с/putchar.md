```c
#include <stdio.h>
int main() {
    int ch = getchar();
    int res = putchar(ch); // выводит считанный символ
    printf("\n%d\n", res);
    return 0;
}
```
Функция `putchar` в языке C используется для вывода одного символа на стандартный вывод (обычно это консоль). Она также определена в заголовочном файле `<stdio.h>`