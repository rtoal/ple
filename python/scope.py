x, y, z = 1, 2, 3   # Three global variables

def f(x):
    x = 4           # parameters are local
    y = 5           # local y, shadows global y
    w = 6           # makes a local w
    global z
    z = 7           # overwrites global z

f(10)
assert(x == 1 and y == 2 and z == 7)
