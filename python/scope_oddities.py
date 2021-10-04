x = 3
assert [x for x in range(5)] == [0, 1, 2, 3, 4]
assert x == 3 # x was not changed

print([y for y in range(5)])
try:
    print(y) # will raise an error, since y did not leak
    assert False
except Exception as e:
    assert e.__class__.__name__ == 'NameError'

assert [(y := 1) for x in range(5)] == [1, 1, 1, 1, 1]
assert y == 1 # The := operator creates a new variable!

