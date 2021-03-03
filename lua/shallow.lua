a = {{x=0, y=0}, {x=3, y=0}, {x=3, y=4}}

b = a;                 -- copies the reference, so we have sharing
c = {}
for key, value in pairs(a) do
  c[key] = value
end                    -- makes a SHALLOW COPY of array elements

b[1] = 100
assert(a[1] == 100)    -- demonstrate a and b are shared

c[2] = 200
assert(a[2].x == 3)    -- c[2] is a copy

c[3].x = 300
assert(a[3].x == 300)  -- but c[2].x was still shared