import assert from "assert"

const f = (x, y) => [x, y]
const g = (x, ...y) => [x, y]

assert.deepStrictEqual(f(1), [1, undefined]) // too few args
assert.deepStrictEqual(f(1, 2, 3), [1, 2]) // too many args
assert.deepStrictEqual(g(1, 2, 3), [1, [2, 3]]) // args packed
const args = [1, 2]
assert.deepStrictEqual(f(...args), [1, 2]) // args unpacked
