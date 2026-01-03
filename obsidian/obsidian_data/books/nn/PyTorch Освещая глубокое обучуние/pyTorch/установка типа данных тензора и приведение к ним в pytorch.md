```python
points1 = torch.ones(10, 2, dtype=torch.double)
points2 = torch.tensor([[1,2], [3,4]], dtype=torch.short)
```

```python
points3 = torch.zeros(10, 2).short()
```

```python
points4 = torch.zeros(10, 2).to(torch.double)
points5 = torch.zeros(10, 2).to(dtype=torch.double)
```
