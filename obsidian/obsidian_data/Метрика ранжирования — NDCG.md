NDCG расшифровывается как Normalized Discounted Cumulative Gain — нормализованный дисконтированный накопленный выигрыш. Звучит пугающе, но по частям всё логично. Разберём с конца к началу — то есть от простого к сложному.

Gain (выигрыш)

Каждый объект в списке имеет оценку релевантности (например, 0, 1, 2 или 3). Эта оценка сама по себе и есть "выигрыш" от показа этого объекта пользователю.

Cumulative Gain (накопленный выигрыш)

Если просто сложить релевантности всех объектов в списке — получим CG. Но у этого подхода есть проблема: он не учитывает порядок вообще. Список [3, 0, 0] и список [0, 0, 3] дадут одинаковую сумму — хотя первый явно лучше (самое релевантное — сразу наверху).

Discounted (дисконтированный) — вот тут и появляется учёт позиции

Идея: релевантность объекта на позиции 1 должна учитываться "как есть", а вот та же самая релевантность, но на позиции 10 — должна учитываться с дисконтом (штрафом), ведь пользователь до 10-й позиции может вообще не долистать.


```python
true_relevance= np.array([[3, 1, 0, 2, 2]])
score = np.array([[0.3, 0.7, 0.8, 0.1, 0.4]])

print(ndcg_score(true_relevance, score))

```

несполько запросов:
```python 
true_relevance = np.array([
    [3, 2, 1, 0, 1],
    [2, 1, 0, 2, 3]])

score = np.array([
    [0.9, 0.5, 0.3, 0.1, 0.3],
    [0.6, 0.4, 0.1, 0.3, 0.9]    
])

print(ndcg_score(true_relevance, score))

```


ограничене по топу саписка  `NDCG@k`
```python
print(ndcg_score(true_relevance, score, k=3))
```


задача 
```python
x_train = np.random.rand(100,5)
y_train = np.random.randint(0,4, size=100)

model = RandomForestRegressor(random_state=42)
model.fit(x_train, y_train)


x_query = np.random.rand(5,5)
true_relevance = np.array([[3, 1, 2, 0, 2]])

predicted_score = model.predict(x_query).reshape(1, -1)
print("NDCG: ", ndcg_score(true_relevance, predicted_score, k=3))

```