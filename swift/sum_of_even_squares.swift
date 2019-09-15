func sumOfEvenSquares(_ a: [Int]) -> Int {
    var sum = 0
    for x in a where x.isMultiple(of: 2) {
        sum += x * x
    }
    return sum
}

assert(sumOfEvenSquares([]) == 0)
assert(sumOfEvenSquares([1]) == 0)
assert(sumOfEvenSquares([1,2]) == 4)
assert(sumOfEvenSquares([1,2,3]) == 4)
assert(sumOfEvenSquares([1,2,3,4]) == 20)
