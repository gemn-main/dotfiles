```html
<div class="quote">  
<span class="text">Hello</span>  
</div>
```

```python
soup.select(".quote .text")
```

`select()` возвращает список.

Если нужен один:
`soup.select_one(".quote")`
