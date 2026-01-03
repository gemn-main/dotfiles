```c
int main(void)
{
    int data[] = {1, 2, 5, 1, 6, 1, 7, 8, 1, 6, 11};
    int lenght = sizeof(data) / sizeof(*data);

    FILE *fp = fopen("write_read", "w");
    FILE *in = fopen("write_read", "r");

    if (fp == NULL || in == NULL)
    {
        perror("write_read");
        return 1;
    }

    for (int i = 0; i < lenght; ++i)
        fprintf(fp, "%d ", data[i]);

    fflush(fp);

    int value;
    for (int i = 0; i < lenght; ++i)
        if (fscanf(in, "%d ", &value) == 1)
            printf("%d ", value);

    fclose(fp);
    fclose(in);
    return 0;
}
...
1 2 5 1 6 1 7 8 1 6 11 
```
`fflush`: переносит все данные из выходного потока в файл