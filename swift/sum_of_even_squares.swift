func sumOfEvenSquares(a: [Int]) -> Int {
    var sum = 0
    for x in a {
        if x % 2 == 0 {
            sum += x * x
        }
    }
    return sum
}
