x, y, z = 1, 2, 3   # Three global variables

def f(x):
    x = 4       # x is local because it is a parameter
    y = 5       # makes a local y, shadows global y
    w = 6       # makes a local w
    global z
    z = 7       # overwrites global z

def g():
    print(v)    # ERROR: used before assign
    v = 8       # new local, declared too late

f(10)
print('{}, {}, {}'.format(x, y, z))   # 1, 2, 7
try:
    g()
except Exception, e:
    print(e)