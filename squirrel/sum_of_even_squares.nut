function sumOfEvenSquares(a)
{
    return a.filter(@(_, a) a % 2 == 0).map(@(a) a * a).reduce(@(a, b) a + b) || 0
}

assert(sumOfEvenSquares([]) == 0)
assert(sumOfEvenSquares([1]) == 0)
assert(sumOfEvenSquares([1,2]) == 4)
assert(sumOfEvenSquares([1,2,3]) == 4)
assert(sumOfEvenSquares([1,2,3,4]) == 20)
assert(sumOfEvenSquares([4,6,7,2]) == 56)