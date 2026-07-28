```python 
print(df.groupby("city")["salary"].mean())

...
city
Rim         1200.0
New_York    3105.0
Name: salary, dtype: float64
```


```python
print(df.groupby("city")["salary"].agg([
    "mean",
    "max",
    "min",
    "count"
]))

...
            mean   max   min  count
city                               
New_York  3105.0  5010  1200      2
Rim       1200.0  2500   100      3
```



промокод simplexswap- dfw2bdwEsyl6tsLa