Point = Data.define :x, :y
p = Point[1, 2]
fail unless p.x == 1 && p.y == 2
fail unless p.with x: 3 == Point.new(3, 2)
