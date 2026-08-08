```python 
#MAE
from sklearn.metrics import mean_absolute_error
mae = mean_absolute_error(y_test, y_pred)


#RMSE 
from sklearn.metrics import root_mean_squared_error
rmse = root_mean_squared_error(y_test, y_pred)
```

MAE - 	Средняя ошибка в исходных единицах, устойчива к выбросам
RMSE - Сильнее штрафует крупные ошибки

