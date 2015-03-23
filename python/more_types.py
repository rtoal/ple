import math
assert(str(type(math)) == "<class 'module'>")

def triple(x):
    yield 3 * x

assert(str(type(triple)) == "<class 'function'>")
assert(str(type(triple(5))) == "<class 'generator'>")

class Circle:
    def __init__(self, radius):
        self.radius = radius
    def area(self):
        return math.pi * self.radius * self.radius
    @classmethod
    def basic_circle(cls, radius):
        return cls(radius)

c = Circle(10)

assert(type(c) == Circle)
assert(type(Circle) == type)
assert(str(type(Circle.area)) == "<class 'function'>")
assert(str(type(c.area)) == "<class 'method'>")
