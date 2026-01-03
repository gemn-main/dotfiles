
обращение к данным 
```c
tager.x = 12;
tager.y = 1;
tager.z = 101;
```


```c
struct tag
{
    int x, y, z;
};

struct tag tager = {1, 2};
printf("x = %d, y = %d, z = %d", tager.x, tager.y, tager.z);

...
x = 1, y = 2, z = 0
```
`

```c
struct tag
{
    int x, y, z;
};

struct tag tager = {.y = 9, .z = 7};
printf("x = %d, y = %d, z = %d", tager.x, tager.y, tager.z);

...
x = 0, y = 9, z = 7
```


[[вложенные структуры]] 
