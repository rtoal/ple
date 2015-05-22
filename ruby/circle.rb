class Circle
  def initialize(x, y, r)
    @x = x
    @y = y
    @r = r
  end
  def center()
    [@x, @y]
  end
  def area()
    Math::PI * @r * @r
  end
  def to_s()
    "Circle at (#{@x}, #{@y}) with radius #{@r}"
  end
end

c = Circle.new(5, 4, 10)
puts "The center is #{c.center}"   # Method call
puts c.area                        # Another method call
puts c                             # calls c.to_s
