class Circle
  def initialize(x, y, r)
    @x = x
    @y = y
    @r = r
  end
  
  def center() = [@x, @y]
  
  def area() = Math::PI * @r * @r

  def to_s()
    "Circle at (#{@x}, #{@y}) with radius #{@r}"
  end
end

c = Circle.new(5, 3, 10)
fail unless c.center == [5, 3]
fail unless c.area == 100 * Math::PI

# to_s is automatically called when in string context
fail unless "#{c}" == "Circle at (5, 3) with radius 10"
