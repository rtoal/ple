a = {{x=0, y=0}, {x=8, y=21}, {x=3, y=5}}

b = a;                 -- copies the reference: b and a share

c = {}
for key, value in pairs(a) do
  c[key] = value
end                    -- makes a shallow copy of a into c

b[1] = 100
assert(a[1] == 100)    -- demonstrate a and b are shared
c[2] = 200
assert(a[2].x == 8)    -- c[2] is a copy, so a is unaffected
c[3].x = 300
assert(a[3].x == 300)  -- changed because copy was not deep