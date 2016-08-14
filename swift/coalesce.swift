let x: Int? = 5
let y: Int? = nil

assert(x ?? 3 == 5)
assert(y ?? 3 == 3)
assert(x ?? [1,2,3][100] == 5)  // short circuit
