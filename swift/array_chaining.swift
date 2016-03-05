var a: [Int]? = [10, 20, 30]
var b: [Int]? = nil

assert(a?[2] == 30)
assert(b?[2] == nil)
