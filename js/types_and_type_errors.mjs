import assert from "assert/strict"
assert.throws(() => null.toString(), TypeError)
assert.throws(() => undefined.toString(), TypeError)
