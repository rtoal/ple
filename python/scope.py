a, b, c = 1, 2, 3   # Three global variables

def f(x):
    d = 4           # Brand new local!
    a = 5           # Local to f, shadows global
    def g():
        x = 1       # Local to g, shadows f's x
        nonlocal a  # allows access to f's a
        a = 6       # updates the nonlocal
        global c
        c = 7
    g()
    assert x == 10  # g's x did not overwrite f's x
    assert a == 6   # assert that it changed
    assert b == 2   # globals are visible

f(10)
assert a == 1 and b == 2 and c == 7
