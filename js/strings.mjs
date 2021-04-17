import assert from "assert"

const s = "\u{1f363}\u{2669}"
assert(s.length === 3) // sigh, not great
assert([...s].length === 2) // ok, 2 code points
assert(Buffer.from(s, "utf8").length === 7) // ok, 7 bytes utf-8
