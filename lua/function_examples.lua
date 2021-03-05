-- Function values can be declared or assigned
function odd(x) return x % 2 == 1 end
square = function (x) return x * x end
twice = function (f, x) return f(f(x)) end

-- We can call anonymous functions
assert((function (x) return x + 5 end)(10) == 15)

-- We can pass function values to other functions
assert(twice(square, -3) == 81)
assert(twice(function (x) return x + 1 end, 5) == 7)

-- We can create and return new functions on the fly
function compose(f, g)
  return function (x) return f(g(x)) end
end
is_odd_when_squared = compose(odd, square)
assert(is_odd_when_squared(7))
assert(not is_odd_when_squared(0))

-- Too many arguments are fine, extras are ignored
assert((function (x) return x + 1 end)(8, 2) == 9) 

-- Not passing enough arguments is fine, extras get nil
do (function (x, y) assert(y == nil) end)(1) end
