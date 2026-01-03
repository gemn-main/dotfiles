```c
#include <stdio.h>

void example_function() {
    static int static_var = 0; // Видима только в этой функции
    int regular_var = 0;       // Обычная локальная переменная
    static_var++;
    regular_var++;

    printf("static_var = %d, regular_var = %d\n", static_var, regular_var);
}

int main() {
    example_function(); // static_var = 1, regular_var = 1
    example_function(); // static_var = 2, regular_var = 1
    example_function(); // static_var = 3, regular_var = 1

    return 0;
}
```
Локальная `static` переменная в функции сохраняет своё значение между вызовами функции, но видна только внутри этой функции. Инициализируется один раз, при первом вызове, и живёт до завершения программы.


[[расположение глобальных переменных|расположены по такому же принципу как и глобальные]] 