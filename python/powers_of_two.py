def powers_of_two(limit):
    value = 1
    while value < limit:
        yield value
        value += value

# Use the generator
for i in powers_of_two(70):
    print(i)

# Explore the mechanism
print(type(powers_of_two))  # <class 'function'>
g = powers_of_two(100)
print(type(g))              # <class 'generator'>
print(g.__next__())         # 1
print(g.__next__())         # 2
print(next(g))              # 4
