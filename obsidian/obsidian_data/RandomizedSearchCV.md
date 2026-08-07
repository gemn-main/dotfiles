похоже на [[Подбор гиперпараметров GridSearchCV | GridSearchCV]] 
```python
from sklearn.model_selection import RandomizedSearchCV

skf = StratifiedKFold(n_splits= 5, shuffle=True, random_state= 42)
param_distributions = {
    'max_depth': [3, 5, 10, 20, None],
    'n_estimators': [50, 100, 200, 300, 500],
    'min_samples_split': [2, 5, 10, 20],
}

random_search = RandomizedSearchCV(
        estimator = RandomForestClassifier(random_state=42),
        param_distributions = param_distributions,
        n_iter = 20,
        scoring='f1_macro',
        cv = skf,
        random_state=42,
        n_jobs = -1
        )

random_search.fit(x_train, y_train)
print(random_search.best_params_)

```

если параметров слишком много, RandomSearchCV берет случайное количество комбинации (n_iter)