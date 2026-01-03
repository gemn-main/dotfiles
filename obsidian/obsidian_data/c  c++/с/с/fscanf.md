```c
enum
{
    max_length = 1024
};
int main(void)
{
    double rub_usd[max_length] = {0.0};
    unsigned length = 0;
    FILE *fp = fopen("data.csv", "r");
    if (fp == NULL)
    {
        perror("data.csv");
        return 1;
    }
    while (fscanf(fp, "%lf; ", &rub_usd[length]) == 1)
        length++;

    fclose(fp);
    for (int i = 0; i < length; ++i)
        printf("%.3f ", rub_usd[i]);
    return 0;
}
...
12.510 12.500 6.100 51.500 99.900 12.500 61.700 81.500 16.100 63.900 92.600 99.990 
```
считывает данные из потока с **указанным форматом** и запястью в массив 
