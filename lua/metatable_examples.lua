-- This is non-idiomatic Lua
p = {i = 8, j = 7}
q = {i = 3, j = 4}

setmetatable(q, {
  __mul = function (a,b) return a.i * b.i + a.j * b.j end,
  __index = {
    magnitude = function (self)
      return math.sqrt(self.i*self.i + self.j*self.j)
    end
  }
})

assert(p * q == 52)
assert(q.magnitude(q) == 5)
assert(q:magnitude() == 5)
