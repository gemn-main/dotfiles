```python
import numpy as np 
from sklearn.datasets import make_classification 
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier 
from sklearn.metrics import f1_score, classification_report 


x, y = make_classification(
    n_samples=2000, n_features=10,
    weights=[0.95, 0.05],
    random_state=42
        )

x_train, x_test, y_train, y_test = train_test_split(x, y, stratify=y, random_state=42)


model_plain = RandomForestClassifier(random_state=42)
model_plain.fit(x_train, y_train)
pred_plain = model_plain.predict(x_test)

model_balanced = RandomForestClassifier(class_weight='balanced', random_state = 42)
model_balanced.fit(x_train, y_train)
pred_balanced = model_balanced.predict(x_test)


print("without class_weight, f1 macro:",f1_score(y_test, pred_plain, average='macro'))
print("with class_weight='balanced' f1 macro:", f1_score(y_test, pred_balanced,average='macro'))
```

Идея: **штраф за ошибку на редком классе увеличивается**, пропорционально тому, насколько класс редкий. Если класс 1 встречается в 99 раз реже класса 0 — ошибка на объекте класса 1 будет "стоить" модели примерно в 99 раз дороже, чем ошибка на объекте класса 0. Из-за этого модели больше не выгодно игнорировать редкий класс — она вынуждена стараться его находить, даже ценой увеличения числа ошибок на частом классе.