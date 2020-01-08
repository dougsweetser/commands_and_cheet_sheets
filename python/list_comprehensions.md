# List comprehensions

```
>>> xs = range(10)
>>> [ x^2 for x in xs if x % 2 ]
[1, 9, 25, 49, 81]
```
[___ **for** __ **in** __ **if** __]

Can use for dictionaries:

```
>>> { x: x**2 for x in xs if x % 2 }
{1: 1, 3: 9, 5: 25, 7: 49, 9: 81}
```
