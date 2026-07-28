```python
from sklearn.datasets import load_wine # запрос загрузка датасета
import pandas as pd 
from sklearn.model_selection import train_test_split # разделение 
from sklearn.ensemble import RandomForestClassifier # модель обучения 
from sklearn.metrics import accuracy_score # подчет точности модели


data = load_wine()

X = pd.DataFrame(data.data, columns=data.feature_names) # .data сами данные .feature_names их раметка
y = pd.Series(data.target, name="target") # Series() для одномерного массива .target тардгет массива



X_train, X_test, y_train, y_test = train_test_split(
    X, y,
    test_size=0.2,  # 20% - test, 80% - train
    random_state = 42 # random seed
)



model = RandomForestClassifier(random_state=42)
model.fit(X_train, y_train) # обучение 

y_pre = model.predict(X_test) # предикт 
acc = accuracy_score(y_test, y_pre)
print(acc)


```