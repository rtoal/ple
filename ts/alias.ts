import * as assert from "assert"

type smallPrime = 2 | 3 | 5 | 7 | 11 | 13
type Point = { x: number; y: number }
type NumberPredicate = (n: number) => boolean

const five: smallPrime = 5

function checkYValue(test: NumberPredicate, p: Point): boolean {
  return test(p.y)
}

assert(checkYValue(n => n > 3, { x: 1, y: five }))
