abstract type Shape end

struct Circle <: Shape; radius::Float64; end
struct Square <: Shape; side::Float64; end

area(c::Circle) = pi * c.radius^2
area(s::Square) = s.side^2

fits(s::Circle, within::Circle) = s.radius <= within.radius
fits(s::Square, within::Square) = s.side <= within.side
fits(s::Circle, within::Square) = s.radius <= within.side / 2
fits(s::Square, within::Circle) = s.side <= within.radius * √2

shapes = [Circle(1.0), Square(2.0), Circle(1.5), Square(3.0)]
s1 = rand(shapes)
s2 = rand(shapes)
println("$s1 fits in $s2? $(fits(s1, s2))")
