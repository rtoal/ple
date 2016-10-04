func sumOfEvenSquares(_ a: [Int]) -> Int {
    return a.filter{$0 % 2 == 0}.map{$0 * $0}.reduce(0, +)
}

assert(sumOfEvenSquares([]) == 0)
assert(sumOfEvenSquares([1]) == 0)
assert(sumOfEvenSquares([1,2]) == 4)
assert(sumOfEvenSquares([1,2,3]) == 4)
assert(sumOfEvenSquares([1,2,3,4]) == 20)
