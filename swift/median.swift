func median<T:Comparable>(_ x: T, _ y: T, _ z: T) -> T {
    let (a, b) = (min(x, y), max(x, y))
    return b < z ? b : max(a, z)
}

for (x,y,z) in [(1,2,3),(1,3,2),(2,1,3),(2,3,1),(3,1,2),(3,2,1)] {
    assert(median(x, y, z) == 2)
}
