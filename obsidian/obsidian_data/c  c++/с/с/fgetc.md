Считывает один символ из файла.

**Синтаксис**:
```c
int fgetc(FILE *stream);
```
Возвращает считанный символ или `EOF`, если достигнут конец файла.

```c
FILE *in = fopen("my_file.txt", "r");
if (in == NULL)
	return 2;
	
char buff[100];

char ch;
int i = 0;

while ((ch = fgetc(in)) != EOF)
	buff[i++] = ch;
	
buff[i] = '\0';
puts(buff);
fclose(in);

...
hello bro, it is a test.
```
