import { strict as assert } from "assert"

function next(n: number): any {
  return n + 1
}

assert.equal(next(1), 2)
assert.throws(() => next(1)(2), /TypeError/)
