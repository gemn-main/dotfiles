```python
points = torch.ones(2, 4)
points_np = points.numpy()
```

и наоборот:
```python
points = torch.from_numpy(points_np)
```