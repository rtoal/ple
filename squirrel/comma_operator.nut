local a, b, x
x = (a = 5, b = 9, a * a + b * b)

assert(a == 5)
assert(b == 9)
assert(x == 106)