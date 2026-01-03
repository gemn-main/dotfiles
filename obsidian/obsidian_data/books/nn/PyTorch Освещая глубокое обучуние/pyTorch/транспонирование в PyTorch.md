#### 1. **`torch.t()`**
   - Работает **только для 2D тензоров** (матриц).
   - Меняет местами строки и столбцы.
   ```python
   import torch

   x = torch.tensor([[1, 2, 3],
                     [4, 5, 6]])
   xt = x.t()  # транспонирование
   print(xt)
   ```
   **Вывод:**
   ```
   tensor([[1, 4],
           [2, 5],
           [3, 6]])
   ```

#### 2. **`torch.transpose(dim0, dim1)`**
   - Работает для тензоров **любой размерности**.
   - Меняет местами две указанные оси (`dim0` и `dim1`).
   ```python
   x = torch.randn(2, 3, 4)  # тензор 3D
   xt = torch.transpose(x, 0, 2)  # меняем оси 0 и 2
   print(xt.shape)  # [4, 3, 2]
   ```

#### 3. **`Tensor.transpose(dim0, dim1)`**
   - Аналог `torch.transpose()`, но вызывается как метод тензора.
   ```python
   x = torch.randn(3, 5)
   xt = x.transpose(0, 1)  # меняем оси 0 и 1
   print(xt.shape)  # [5, 3]
   ```

