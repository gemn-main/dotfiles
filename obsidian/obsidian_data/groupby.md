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


export DATA_API="https://data-api.polymarket.com"
export CLOB_API="https://clob.polymarket.com"
export FUNDER_ADDRESS="0x2c72346eeb5A3f050a54cc37C38C5B1fB359c74b"
export PRIVATE_KEY="0xdb2fe3bf1d9f99931cb0635e8b562956525412c1712fbbbec8e5e4cb001168da"
export API_KEY="b480ebd3-ddc1-f107-7e6f-c1c7aec18351"
export API_SECRET="sDc8BSQgasNtojB40yoYHSEN3innt08ZB3t1FbC2lfw="
export API_PASSPHRASE="4a908cb4c21dd4815704d826624e27dc06133d28d0470874a8bc27c9452edb53"

python test2.py --token-id 64778757908501179476331390591326653229579537200061619395979045269181713848562

промокод simplexswap- dfw2bdwEsyl6tsLa