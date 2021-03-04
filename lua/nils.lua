assert(x == nil)     -- does not fail! global x is nil

local y              -- also fine
assert(y == nil)     -- missing initializer is implicitly nil

t = {a=1, b=2}
assert(t.c == nil)   -- unassigned table fields are just nil

print(y, c, t.d)     -- happily prints three nils
