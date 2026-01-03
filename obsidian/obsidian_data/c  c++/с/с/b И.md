```c
int main(void)
{
    unsigned char var = 6;    // 00000110 
    unsigned char not_v =  3; // 00000011
    
    unsigned char res = var & not_v; // 00000010 = 2
    printf("var = %d, not_v = %d, res = %d", var, not_v, res);
    return 0;
}
var = 6, not_v = 3, res = 2
```


![[Pasted image 20241106202124.png]]