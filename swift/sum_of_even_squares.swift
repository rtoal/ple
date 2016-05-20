func sumOfEvenSquares(a: [Int]) -> Int {
    var sum = 0
    for x in a {
        if x % 2 == 0 {
            sum += x * x
        }
    }
    return sum
}

assert(sum_of_even_squares([]) == 0)
assert(sum_of_even_squares([1]) == 0)
assert(sum_of_even_squares([1,2]) == 4)
assert(sum_of_even_squares([1,2,3]) == 4)
assert(sum_of_even_squares([1,2,3,4]) == 20)
