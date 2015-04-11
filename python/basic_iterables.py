for x in (1,2,3): print(x)
for x in [1,2,3]: print(x)
for x in {1,2,3}: print(x)
for c in 'hello': print(c)

for k in {'x':1, 'y':2, 'z':3}:
    print k

with open('colors') as f:
    for line in f:
        print line.strip()
