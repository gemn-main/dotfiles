```python
from sklearn.model_selection import GridSearchCV, StratifiedKFold, train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.datasets import load_wine
from sklearn.metrics import f1_score


x,y = load_wine(return_X_y=True)
x_train, x_test, y_train, y_test = train_test_split(x, y, stratify=y, random_state=42)



param_grid = {
    'max_depth' : [3, 5, 10, None],
    'n_estimators' : [50, 100, 200],
}

skf = StratifiedKFold(n_splits= 5, shuffle=True, random_state= 42)

grid = GridSearchCV(
    estimator = RandomForestClassifier(random_state=42),
    param_grid=param_grid,
    scoring= 'f1_macro',
    cv = skf,
    n_jobs = -1
)


grid.fit(x_train, y_train)
```

`estimator` — базовая модель (пока без нужных гиперпараметров — их за нас подставит GridSearchCV).
`param_grid` — словарь: ключ — название гиперпараметра (точно как он называется у модели), значение — список вариантов, которые нужно перебрать.
`scoring` — какую метрику использовать для сравнения вариантов (та же логика, что и в cross_val_score из Урока 4).
`cv` — как именно делить данные на части для оценки каждого варианта (можно передать готовый StratifiedKFold, либо просто число, например cv=5).
`n_jobs=-1` — использовать все ядра процессора параллельно (об этом ниже, в части про количество обучений).



# Что делать с результатами

```python
print("Лучшие параметры:", grid.best_params_)
print("Лучший средний CV-score:", grid.best_score_)
```
- **`best_params_`** — словарь с комбинацией гиперпараметров, которая показала лучший средний результат на кросс-валидации.
- **`best_score_`** — само значение этого лучшего среднего результата (то, что мы указали в `scoring`).

 `GridSearchCV` по умолчанию **сам переобучает** финальную модель с лучшими параметрами на **всех** данных, которые ты ему передал (`X_train`, `y_train` целиком, без разбиения на fold'ы) — это поведение управляется параметром `refit=True` (он и так стоит по умолчанию). Благодаря этому объект `grid` сразу можно использовать как готовую обученную модель:


### `cv_results_` — если хочешь посмотреть на все комбинации, а не только на лучшую
```python
import pandas as pd

results = pd.DataFrame(grid.cv_results_)
print(results[['params', 'mean_test_score', 'std_test_score']].sort_values('mean
```