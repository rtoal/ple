func perimeter(base: Int, height: Int) -> Int {
    return 2 * (base + height)
}

func average(of x: Int, and y: Int) -> Double {
    return Double(x + y) / 2.0
}

func middle(_ x: Int, _ y: Int) -> Double {
    return Double(x + y) / 2.0
}

assert(perimeter(base: 4, height: 20) == 48)
assert(average(of: 5, and: 8) == 6.5)
assert(middle(5, 8) == 6.5)
