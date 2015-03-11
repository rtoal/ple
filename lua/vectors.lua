Vector = {
  new = function (i, j)
    return setmetatable({i = i, j = j}, {
      __index = Vector,
      __add = function (self, v)
        return Vector.new(self.i + v.i, self.j + v.j)
      end,
      __mul = function (self, v)
        return self.i*v.i + self.j*v.j
      end,
      __tostring = function (self)
        return string.format('<%g,%g>', self.i, self.j)
      end
    })
  end,
  magnitude = function (self)
    return math.sqrt(self.i*self.i + self.j*self.j)
  end
}

u = Vector.new(3, 4)
v = Vector.new(-5, 10)
print(u.i)
print(u.j)
print(u:magnitude())
print(u + v)
print(u * v)

