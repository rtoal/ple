Vector = (function (class)
  local meta = {
    __add = function(self, v)
      return class.new(self.i + v.i, self.j + v.j)
    end,
    __mul = function(self, v)
      return self.i * v.i + self.j * v.j
    end,
    __tostring = function(self)
      return string.format("<%g,%g>", self.i, self.j)
    end,
    __index = {
      magnitude = function(self)
        return math.sqrt(self.i * self.i + self.j * self.j)
      end
    },
  }

  class.new = function (i, j)
    return setmetatable({i = i, j = j}, meta)
  end

  return class
end)({})

u = Vector.new(3, 4)
v = Vector.new(-5, 10)
assert(tostring(u) == "<3,4>")
assert(tostring(v) == "<-5,10>")
assert(u.i == 3)
assert(u.j == 4)
assert(u:magnitude() == 5.0)
assert(tostring(u + v) == "<-2,14>")
assert(u * v == 25)
