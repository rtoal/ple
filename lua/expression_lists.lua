a, b = 5, 6, 7          -- extra results ignored
c, d, e, f = 5, 6, 7    -- extra vars become nil

assert(a == 5 and b == 6)
assert(c == 5 and d == 6 and e == 7 and f == nil)
