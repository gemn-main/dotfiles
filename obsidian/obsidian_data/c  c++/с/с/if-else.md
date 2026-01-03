## if 
```c
int main() {
    int x;
    if(scanf("%d", &x) != 1){
        printf("Inpur error");
        return 0 ;
    };
    if (x <= 3 || x>= 12) {
        printf("hi skufindiai!");   
    }
    return 0;
}
```


## if-else
```c
int main() {
    int x;
    scanf("%d", &x);
    if (x < 0) {
        printf("hi skufindiai!");   
    }
    else
        printf("bye");
    return 0;
}
```

