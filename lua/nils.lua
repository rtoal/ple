print(x)             -- this does not fail!
assert(x == nil)     -- unassigned global x is simply nil
local y              -- also fine
assert(y == nil)     -- missing initializer is implicitly nil
t = {a=1, b=2}
assert(t.c == nil)   -- unassigned table fields are just nil
print(y, c, t.d)     -- happily prints three nils
