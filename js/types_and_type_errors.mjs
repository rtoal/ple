import assert from "assert"
assert.throws(() => null.toString(), TypeError)
assert.throws(() => undefined.toString(), TypeError)
