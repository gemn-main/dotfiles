```python
from sklearn.preprocessing import OneHotEncoder 

cities = ['London', 'Moscow', 'Paris', 'New_York', 'Moscow']

onehot = OneHotEncoder(sparse_output=False)
cities_2d = [[c] for c in cities]

encoder = onehot.fit_transform(cities_2d)

print(encoder)

...

[[1. 0. 0. 0.]
 [0. 1. 0. 0.]
 [0. 0. 0. 1.]
 [0. 0. 1. 0.]
 [0. 1. 0. 0.]]
```