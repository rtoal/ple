sumOfEvenSquares := method(a, a select(isEven) map(x, x**2) reduce(x, y, x + y) ifNil(return 0))
assert := method(success, (success) ifFalse(Exception raise("Objects are not equivalent.")))

assert(sumOfEvenSquares(list()) == 0)
assert(sumOfEvenSquares(list(1)) == 0)
assert(sumOfEvenSquares(list(1,2)) == 4)
assert(sumOfEvenSquares(list(1,2,3)) == 4)
assert(sumOfEvenSquares(list(1,2,3,4)) == 20)