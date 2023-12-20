import assert from "assert/strict"

// Grapheme = flag: Lebanon. 2 characters, 8 bytes
const string = "\u{1f1f1}\u{1f1e7}"
const bytes = Buffer.from(string, "utf8")
const codePoints = [...string]

assert(string.length == 4) // internal rep is 4 chunks of UTF-16)
assert(bytes.length == 8) // ok
assert(codePoints.length == 2) // better
