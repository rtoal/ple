from dataclasses import dataclass

@dataclass(frozen=True, order=True)
class Point:
    x: float
    y: float

p = Point(1.0, 2.0)  # decorator autogenerates a constructor
q = Point(1.0, 2.0)
assert(p.x == 1.0)   # decorator autogenerates attribute accessors
assert(p.y == 2.0)
# p.x = 5.0          # is an error because Point is frozen
assert(p == q)       # eq=True is a default for the decorator
assert(p >= q)       # we set order=True in the decorator
match p:             # match_args=True is a default for the decorator
    case (a, b):
        assert(a == 1.0 and b == 2.0)
