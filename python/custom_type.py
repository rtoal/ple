import math

class Circle:
    def __init__(self, radius):
        self.radius = radius
    def area(self):
        return math.pi * self.radius * self.radius

c = Circle(10)

assert type(c) == Circle            # Circle is a type!
assert type(Circle) == type         # It really is!

assert str(type(Circle.area)) == "<class 'function'>"
assert str(type(c.area)) == "<class 'method'>"

assert c.area() == math.pi * 100    # A method call...
assert Circle.area(c) == c.area()   # ...is just sugar
