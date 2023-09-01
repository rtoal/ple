fun f(x: Int) = x * 5
fun f(s: String) = s.toUpperCase()
fun f(x: Int, y: String) = y.repeat(x)
fun f() = 0

assert(f(5) == 25)
assert(f("abc") == "ABC")
assert(f(5, "8") == "88888")
assert(f() == 0)
