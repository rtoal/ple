import assert from "assert/strict"

assert(3 + 2 ** (3 ** 2) - 10 === 505)
assert(13 / 5 === 2.6)
assert(Math.floor(13 / 5) === 2)
assert(Math.hypot(3, -4) === 5)
assert(Math.random() < 1.0)
assert((237462938920 | 0) === 1239737640)
assert(3n + 5n === 8n)
assert.throws(() => 3 + 5n, TypeError)
