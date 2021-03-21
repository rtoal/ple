import assert from "assert"

assert((5).toFixed(2) === "5.00")
assert(true.toString() === "true")
assert("abcde".length === 5)
assert([5, 3, 9, 4, 6].indexOf(3) === 1)
assert.throws(() => null.toString(), TypeError)
assert.throws(() => undefined.toString(), TypeError)
