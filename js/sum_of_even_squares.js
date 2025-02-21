import assert from "node:assert/strict"

function sumOfEvenSquares(a) {
  return a
    .filter(x => x % 2 === 0)
    .map(x => x ** 2)
    .reduce((x, y) => x + y, 0)
}

assert(sumOfEvenSquares([]) === 0)
assert(sumOfEvenSquares([1, 2, 3, 4, 5]) === 20)
assert(sumOfEvenSquares([2, 4, 6, 8, 10]) === 220)
assert(sumOfEvenSquares([1, 3, 5, 7, 9]) === 0)
