```c

/*в data.csv:
rub/usd
12.51; 12.5; 6.1; 51.5
rub/eur
99.9; 12.5; 61.7; 81.5
rub/yan
16.1; 63.9; 92.6; 99.99*/

enum
{
    max_length = 100
};

int main(void)
{
    char buffer[max_length];

    FILE *fp = fopen("data.csv", "r");
    if (fp == NULL)
    {
        perror("data.csv");
        return 1;
    }
    while (!feof(fp))
    {
        fgets(buffer, sizeof(buffer), fp);
        puts(buffer);
    }
    fclose(fp);
    return 0;
}
```

`feof` - возвращает 0 если символ не EOF 