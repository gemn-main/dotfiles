```c
int main(void)
{
    unsigned char var = 0;    
    unsigned char not_v =  1; 
    
    unsigned char res = var | not_v; 
    printf("var = %d, not_v = %d, res = %d", var, not_v, res);
    return 0;
}
...
var = 0, not_v = 1, res = 1
```
![[Pasted image 20241107185830.png]]

