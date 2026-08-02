```python 
from sklearn.model_selection import StratifiedKFold
from sklearn.model_selection import cross_val_score
from sklearn.ensemble import RandomForestClassifier

skf = StratifiedKFold(n_splits=5, shuffle=True, random_state=42)
model = RandomForestClassifier(random_state=42)
scores = cross_val_score(model, X, y, cv=skf, scoring='f1_macro')

```


`StratifiedKFold` - Обучение на частях 2,3,4,5 → проверка на части 1
Обучение на частях 1,3,4,5 → проверка на части 2
Обучение на частях 1,2,4,5 → проверка на части 3
Обучение на частях 1,2,3,5 → проверка на части 4
Обучение на частях 1,2,3,4 → проверка на части 5


`cross_val_score` - обучает модель 

model — модель передаётся необученной (cross_val_score сам обучит её заново на каждой из 5 частей — это важно понять: в конце у тебя нет одной "итоговой" обученной модели, есть только оценка качества подхода в целом).

X, y — веса данные целиком (не train/test, а всё сразу — разбиение на части cross_val_score берёт на себя).

cv=skf — сюда передаём объект StratifiedKFold, который задаёт, как именно делить данные. Можно передать просто число (cv=5) — тогда sklearn сам создаст обычный KFold без стратификации; для классификации почти всегда лучше явно передать StratifiedKFold.

scoring='f1_macro' — какую метрику считать. Название передаётся строкой; для f1_score(average='macro') строка так и называется — 'f1_macro'. Другие частые: 'accuracy', 'neg_mean_absolute_error' (для регрессии — обрати внимание на приставку neg_, об этом ниже).