```c
int main(){
    int ar[] = {1,23,14,141,5};
    const int *k;
    k = ar[1];
    printf("%d ", k[1]);
    return 0;
}  
olimp.c: In function 'main':
olimp.c:6:7: warning: assignment to 'const int *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
    6 |     k = ar[1];
      |       ^
```
`const` перед `*`  означает что мы можем только читать данные по этому указателю (read-only) 


```c
int main(){
    int ar[] = {1,23,14,141,5};
    int * const k;
    k++;
    printf("%d ", k[1]);
    return 0;
}   
...
olimp.c: In function 'main':
olimp.c:6:6: error: increment of read-only variable 'k'
    6 |     k++;
      |      ^~
```
`const` после `*`  означает что мы не можем менять адрес указателя 


```c
const int code = 12;
```
переменную нельзя изменять, только читать 