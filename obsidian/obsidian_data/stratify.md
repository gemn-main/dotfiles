```python 
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size = 0.2, stratify = y, random_state=seed)
```

`stratify` - сохроняет пропорции классов 