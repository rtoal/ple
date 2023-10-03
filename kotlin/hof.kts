fun twice(f: (Int) -> Int, x: Int): Int = f(f(x))

// Function reference operator (::) for declared funs & methods
fun square (x: Int): Int = x * x
assert(twice(::square, 5) == 625)
assert(twice(Int::inc, 3) == 5)

// Anonymous functions: fun without a name
assert(twice(fun(x: Int): Int = x * x, 5) == 625)

// Lambda expressions: expression in curly braces
assert(twice({ x -> x * x }, 5) == 625)
assert(twice({ it * it }, 5) == 625)
