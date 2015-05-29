# This code is controversial at best
class Point
  attr_accessor :x, :y
  def to_s(); "(#{x},#{y})"; end
end

p = Point.new
p.x = 3
p.y = 5
puts p.x
puts p