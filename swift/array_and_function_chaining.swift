var a: [Int]? = [10, 20, 30]
var b: [Int]? = nil
var f: ((Int)->Int)? = {$0 * 3}

assert(a?[2] == 30)
assert(b?[2] == nil)
assert(f?(100) == 300)
