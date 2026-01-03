```c
#include <stdio.h>
int main(void) {
    int a = 1411;
    printf("lolik = %d", a);
    return 0;
}
...
lolik = 1411
```
*%d* - это [[спецификаторы преобразований|спецификатор]] вместо него берется нужное значение из *a*


```c
#include <stdio.h>
int main(void) {
    int a = 151237;
    printf("lolik = %x", a);
    return 0;
}
...
lolik = 24ec5
```



```c
#include <stdio.h>
int main() {
    long long a = -1231511515161617;
    printf("lolik = %lld", a);
    return 0;
}
```

[[суффиксы|приписка]] ll показывает что надо использовать тип long logn 


```c
#include <stdio.h>
int main() {
    long long a = -1231511515161617;
    int b = 12124;
    long double c = 1206136.16160987;
    printf("a = %lld, b = %d, c = %Lf", a, b,c );
    return 0;
}
```





