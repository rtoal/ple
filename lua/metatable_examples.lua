p = {x = 8, y = 7}
q = {x = 3, y = 5}

meta = {
  __mul = function (a,b) return a.x * b.x + a.y * b.y end
}

setmetatable(q, meta)
assert(p * q == 59)
