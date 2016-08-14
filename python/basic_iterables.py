for x in (1,2,3): print(x)       # elements of a tuple
for x in [1,2,3]: print(x)       # elements of a list
for x in {1,2,3}: print(x)       # elements of a set
for c in 'hello': print(c)       # characters of a string

for k in {'x':1, 'y':2, 'z':3}:
    print(k)                     # keys of a dict

with open('colors') as f:
    for line in f:               # lines of a file
        print(line.strip())
