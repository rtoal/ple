import assert from "assert"

// One character that JavaScript counts as 4
assert("\u{1f1f1}\u{1f1e7}".length == 4)
