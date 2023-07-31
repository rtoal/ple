fun f(x: Int) = x * 5
fun f(s: String) = s.toUpperCase()

assert(f(5) == 25)
assert(f("abc") == "ABC")
