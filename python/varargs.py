def f(x, y=1000, *z):
  print('x={} y={} z={}'.format(x,y,z))

f(0)
f(0,1)
f(0,1,2)
f(0,1,2,3)
f(0,1,2,3,4)
f(*[i for i in range(6)])
f(*range(7))
