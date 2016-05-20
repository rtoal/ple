func sumOfEvenSquares(a: [Int]) -> Int {
    return a.filter{$0 % 2 == 0}.map{$0 * $0}.reduce(0, combine: +)
}

assert(sum_of_even_squares([]) == 0)
assert(sum_of_even_squares([1]) == 0)
assert(sum_of_even_squares([1,2]) == 4)
assert(sum_of_even_squares([1,2,3]) == 4)
assert(sum_of_even_squares([1,2,3,4]) == 20)
