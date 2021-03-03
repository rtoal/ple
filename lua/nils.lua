assert(x == nil)     -- Does not fail! global x is nil

local y              -- Also fine
assert(y == nil)

t = {a=1, b=2}
assert(t.c == nil)   -- Unassigned table fields are just nil

print(y, c, t.d)     -- perfectly fine to print them too
