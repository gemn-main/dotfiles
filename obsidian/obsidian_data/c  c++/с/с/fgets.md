```c
int main(void)
{
    char buff[100];
    FILE *fp = fopen("myy_file.txt", "r");
    if (fp == NULL)
    {
        perror("myy_file.txt");
    }

    fgets(buff, sizeof(buff), fp);
    puts(buff);
    fclose(fp);
    return 0;
}
hie ioy bro how are you?
```
выводит файл 