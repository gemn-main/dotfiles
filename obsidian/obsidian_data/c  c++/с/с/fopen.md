**Описание**: Открывает файл для чтения, записи или других операций. Возвращает указатель на файл типа `FILE *`.

```c
FILE *fopen(const char *filename, const char *mode);
```

- `filename`: Имя файла, который вы хотите открыть.
- `mode`: Режим открытия файла:
![[Pasted image 20250107190625.png]]
если ошибка возвращает NULL
```python
FILE *fp = fopen("my_file.txt", "w");
if (fp == NULL)
	return 1;
```