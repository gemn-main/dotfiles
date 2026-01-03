```python
lines = text.split('\n')
line = lines[123]
letter_t = torch.zeros(len(line), 128)

for i, letter in enumerate(line.lower().strip()):
    letter_index = ord(letter) if ord(letter) < 128 else 0
    letter_t[i][letter_index] = 1 
```
