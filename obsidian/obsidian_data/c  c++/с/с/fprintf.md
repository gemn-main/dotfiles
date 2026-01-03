```c
int main(void)
{
    const char *phones[][5] = {
        {"8", "912", "124", "41", "13"},
        {"8", "915", "171", "81", "38"}};
    FILE *fp = fopen("filetxt.txt", "w");

    if (fp == NULL)
    {
        perror("filetxt.txt");
        return 1;
    }

    for (int i = 0; i < sizeof(phones) / sizeof(*phones); ++i)
        fprintf(fp, "%s(%s)%s-%s-%s\n", phones[i][0], phones[i][1], phones[i][2],
                phones[i][3], phones[i][4]);

    fclose(fp);
    return 0;
}
...
в filetxt.txt
8(912)124-41-13
8(915)171-81-38
```
для записи данных в поток с форматом 