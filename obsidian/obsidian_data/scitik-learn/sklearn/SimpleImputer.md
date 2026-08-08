SimpleImputer - заполнят пропуски  

```python 
df = pd.DataFrame({
    "age" : [25, np.nan, 35, 8, np.nan],
    "income": [50000, 80000, 20000, np.nan, 40000],
    })


print(df)

from  sklearn.impute import SimpleImputer 

imputer = SimpleImputer(strategy='median')
df_filled = imputer.fit_transform(df)

print(df_filled)

...
    age   income
0  25.0  50000.0
1   NaN  80000.0
2  35.0  20000.0
3   8.0      NaN
4   NaN  40000.0
[[2.5e+01 5.0e+04]
 [2.5e+01 8.0e+04]
 [3.5e+01 2.0e+04]
 [8.0e+00 4.5e+04]
 [2.5e+01 4.0e+04]]
```



`strategy='median'` говорит: заполнить пропуски **медианой** соответствующего столбца (для `age`: медиана из `[25, 35, 40]`). Другие частые стратегии:

- `strategy='mean'` — среднее значение столбца;
- `strategy='most_frequent'` — самое частое значение (подходит и для категориальных, нечисловых столбцов);
- `strategy='constant', fill_value=0` — заполнить конкретным заданным значением.