fun sumOfEvenSquares(a: Array<Int>): Int {
    return a.filter { it % 2 == 0 }
        .map { it * it }
        .sum()
}

assert (sumOfEvenSquares(arrayOf()) == 0)
assert (sumOfEvenSquares(arrayOf(1)) == 0)
assert (sumOfEvenSquares(arrayOf(-2)) == 4)
assert (sumOfEvenSquares(arrayOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)) == 220)
assert (sumOfEvenSquares(arrayOf(1, 3, 5, 7, 9)) == 0)
assert (sumOfEvenSquares(arrayOf(2, 4, 6, -8, 10)) == 220)
assert (sumOfEvenSquares(arrayOf(2, 4, 6, 8, 10, 11)) == 220)
assert (sumOfEvenSquares(arrayOf(2, 4, -6, 8, 10, 11, 12)) == 364)
