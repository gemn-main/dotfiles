```c
int main(){
    int gm[5][3];
    size_t bytes = sizeof(gm);
    size_t x_bytes = sizeof(gm[0]);
    size_t y_bytes = sizeof(gm[0][0]);
    size_t y = bytes / x_bytes;
    size_t x = x_bytes / y_bytes;
    printf("y = %d, x = %d", y, x);
    return 0;
}  
...
y = 5, x = 3
```