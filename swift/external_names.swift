// Supply an external name to the first param
func average(of x: Int, and y: Int) -> Double {
    return Double(x + y) / 2.0
}

// Remove external names for subsequent params
func middle(x: Int, _ y: Int) -> Double {
    return Double(x + y) / 2.0
}

assert(average(of: 5, and: 8) == 6.5)
assert(middle(5, 8) == 6.5)
