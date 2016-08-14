x = "I get printed"
y = "I do not get printed"

def f():
    print(x)    # Fine because x is global
    print(y)    # raises UnboundLocalError
    y = 0       # y is local to all of f

try:
    f()
except UnboundLocalError as e:
    print(e)
