```python
int main(void)
{
    char str[] = {"hie ioy bro how are you?"};
    FILE *fp = fopen("my_file.txt", "w");
    if (fp == NULL)
    {
        perror("my_file.txt");
    }

    fputs(str, fp);
    fclose(fp);
    return 0;
}
```
записывает строку в файл 