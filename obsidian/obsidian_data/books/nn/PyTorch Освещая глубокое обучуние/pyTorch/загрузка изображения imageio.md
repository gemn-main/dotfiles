```python
import torch
import imageio.v2 as imageio
img_arr = imageio.imread('/home/user/data/random_images/usp-full.jpg')
```
*загрузка сразу в виде тензора высота-ширина-каналы*

но pytorch работает с такой схемой измерения C x H x W (каналы-высота-ширина)
чтобы преобразовать в такой формат надо использовать permute:
```python
import torch
import imageio.v2 as imageio
img_arr = imageio.imread('/home/user/data/random_images/usp-full.jpg')
img = torch.from_numpy(img_arr)
out = img.permute(2, 0, 1)
print(out.shape)

...
torch.Size([3, 600, 800])   
```