def powers_of_two(limit):
    value = 1
    while value < limit:
        yield value
        value += value

# Use the generator
for i in powers_of_two(70):
    print(i)

# Explore the mechanism
g = powers_of_two(100)
assert str(type(powers_of_two)) == "<class 'function'>"
assert str(type(g)) == "<class 'generator'>"
assert g.__next__() == 1
assert g.__next__() == 2
assert next(g) == 4
assert next(g) == 8
