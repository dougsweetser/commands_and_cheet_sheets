# map(), filter(), and reduce()

Skip loops by giving each a function & list. From [an article](https://towardsdatascience.com/top-3-python-functions-you-dont-know-about-probably-978f4be1e6d)

Apply 1 function **f()** to all data **d** and get a list at the end:
```
fud = list(map(f, d))
```

Toss out stuff **tos()** from **d8**:
```
toad = list(filter(toss, d))
```

Reduce **add_all()** on list **d** which returns **1 number**:
```
from functools import reduce

rad = reduce(add_all, d)
```
