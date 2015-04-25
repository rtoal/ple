a = 5                  # 5 is an object
b = {'x': 5, 'y': 3}   # dicts are objects
c = "hello"            # strings are objects too
d = c                  # two variables sharing an object
e = c.lower()          # should generate a new object
f = 8 * b['y'] - 19    # what happens here?

for obj in (a, b, b['x'], b['y'], c, d, e, f):
    print(id(obj))
