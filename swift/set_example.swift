let a: Set<Int> = [10, 20, 30]
let b: Set<Int> = [20, 30, 40]
assert(a.union(b).count == 4)
assert(a.intersection(b) == Set([20, 30]))
assert(a.contains(10))
assert(!b.isEmpty)
