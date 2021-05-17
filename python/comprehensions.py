assert [(x,y) for x in range(1,3) for y in range(5) if x < y] == \
    [(1, 2), (1, 3), (1, 4), (2, 3), (2, 4)]
assert {x**2 for x in range(5) if x % 2 == 0} == \
    {0, 16, 4}
assert {k: len(k) for k in ("red", "green", "blue")} == \
    {'red': 3, 'green': 5, 'blue': 4}
