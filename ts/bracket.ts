import { strict as assert } from "assert"

function bracketed<T>(array: T[], item: T) {
  return [item, ...array, item]
}

assert.deepEqual(bracketed([1, 2, 3], 0), [0, 1, 2, 3, 0])
assert.deepEqual(bracketed(["x"], "o"), ["o", "x", "o"])
// bracketed([1, 2, 3], "x") will not compile
