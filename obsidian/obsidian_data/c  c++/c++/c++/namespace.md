```python
namespace oner
{
void foo()
{
	std::cout << "hello people!" << std::endl;
}
}

void foo()
{
    std::cout << "hello world!" << std::endl;
}

int main()
{
    oner::foo();
    foo();
    return 0;
}
...
hello people!
hello world!
```