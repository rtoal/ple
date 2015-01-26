Point = {
  new = function (x, y)
    return setmetatable({x=x, y=y}, {__index=Point})
  end,
  color = 'black',
  distance_to_origin = function (self)
    return math.sqrt(self.x*self.x + self.y*self.y)
  end
}

q = Point.new(3, 4)
print(q.x)
print(q.y)
print(q.color)
print(q:distance_to_origin())
