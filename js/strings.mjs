import assert from "assert"

assert("\u{1f6b2}".length === 2)
assert([..."\u{1f6b2}"].length === 1)
