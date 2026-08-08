приводит признаки к одному масштабу 
```python
from sklearn.preprocessing import StandardScaler  

scaler = StandardScaler()
df_scaler = scaler.fit_transform(df)

print(df_scaler)

...

    age   income
0  25.0  50000.0
1   NaN  80000.0
2  35.0  20000.0
3   8.0      NaN
4   NaN  40000.0
[[ 0.20935201  0.11547005]
 [        nan  1.5011107 ]
 [ 1.10657492 -1.27017059]
 [-1.31592693         nan]
 [        nan -0.34641016]]
```

