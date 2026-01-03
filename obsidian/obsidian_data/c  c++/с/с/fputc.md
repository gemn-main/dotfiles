Записывает один символ в файл.

**Синтаксис**:
```c
int fputc(int character, FILE *stream);
```
- `character`: Символ, который нужно записать.
- `stream`: Куда записать
- Возвращает записанный символ или `EOF` в случае ошибки.

```c
char str[] = "hello bro, it is a test.";

FILE *fp = fopen("my_file.txt", "w");
if (fp == NULL)
	return 1;
	
for (int i = 0; i < str[i]; ++i)
	fputc(str[i], fp);
fclose(fp);
```