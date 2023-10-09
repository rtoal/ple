import assert from "assert/strict"

const s = "\u{1f363}\u{2669}" // SUSHI, QUARTER NOTE
assert(s.length === 3) // based on internal storage units
assert(Array.from(s).length === 2) // ok, 2 code points
assert(Buffer.from(s, "utf8").length === 7) // ok, 7 bytes utf-8
