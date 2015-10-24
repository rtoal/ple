func sumOfEvenSquares(a: [Int]) -> Int {
    return a.filter{$0 % 2 == 0}.map{$0 * $0}.reduce(0, combine: +)
}
