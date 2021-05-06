import assert from "assert/strict"

function f(a, b = 3, c, d = 8) {
  return [a, b, c, d]
}

assert.deepEqual(f(1, 2), [1, 2, undefined, 8])
