```python
int main(){
    char gm[3][3] = {4,3,2,1};

    for (int i = 0; i<3; i++){
        for (int j = 0; j<3; j++)
            printf("%d ",gm[i][j]);
        printf("\n");
    }
    return 0;
}   
...
4 3 2 
1 0 0
0 0 0
```

```python
int main(){
    char gm[3][3] = {{4,3},{2,1}};
    for (int i = 0; i<3; i++){
        for (int j = 0; j<3; j++)
            printf("%d ",gm[i][j]);
        printf("\n");
    }
    return 0;
}  
...
4 3 0 
2 1 0
0 0 0
```


[[размер n-мерного массива]] 