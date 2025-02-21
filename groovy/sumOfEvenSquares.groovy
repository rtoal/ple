int sumOfEvenSquares(a) {
    return a.findAll{it % 2 == 0}.collect{it ** 2}.sum() ?: 0
}

assert sumOfEvenSquares([]) == 0
assert sumOfEvenSquares([1]) == 0
assert sumOfEvenSquares([1,2]) == 4
assert sumOfEvenSquares([1,2,3]) == 4
assert sumOfEvenSquares([1,2,3,4]) == 20