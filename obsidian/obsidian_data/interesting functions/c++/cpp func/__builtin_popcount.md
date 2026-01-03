- **`__builtin_popcount(x)`** возвращает число единиц (`1`) в двоичной записи числа `x`.

```cpp
#include <iostream>
using namespace std;

int main() {
    int x = 13;  // В двоичном виде: 1101 (три единицы)
    int count = __builtin_popcount(x);
    cout << count << endl;  // Выведет 3
    return 0;
}
```