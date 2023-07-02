import assert from "assert/strict"

const f = (x, y) => [x, y]
const g = (x, ...y) => [x, y]

assert.deepEqual(f(1), [1, undefined]) // too few args
assert.deepEqual(f(1, 2, 3), [1, 2]) // too many args

assert.deepEqual(g(1, 2, 3), [1, [2, 3]]) // args packed
const args = [1, 2]
assert.deepEqual(f(...args), [1, 2]) // args unpacked
