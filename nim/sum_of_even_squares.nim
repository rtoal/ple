import std/sequtils

proc sumOfEvenSquares(a: seq[int]): int =
  let nums: seq[int] = a.filterIt(it mod 2 == 0)
  if nums.len == 0:
    return 0
  return nums.mapIt(it * it).foldl(a + b)

assert sumOfEvenSquares(@[]) == 0
assert sumOfEvenSquares(@[1]) == 0
assert sumOfEvenSquares(@[1,2]) == 4
assert sumOfEvenSquares(@[1,2,3]) == 4
assert sumOfEvenSquares(@[1,2,3,4]) == 20
assert sumOfEvenSquares(@[4,6,7,2]) == 56