import assert from "assert/strict"

// Canonical composition and decomposition
const zWithDotAbove = "\u{017c}"
const zThenCombiningDotAbove = "z\u{0307}"
assert(zWithDotAbove !== zThenCombiningDotAbove)
assert(zWithDotAbove.normalize("NFD") === zThenCombiningDotAbove)
assert(zThenCombiningDotAbove.normalize("NFC") === zWithDotAbove)

// Compatibility decomposition of ligatures and archaic letters
const ffiLigature = "\u{fb03}"
assert(ffiLigature !== "ffi")
assert(ffiLigature.normalize("NFKD") === "ffi")
const longS = "\u{017f}"
assert(longS !== "s")
assert(longS.normalize("NFKD") === "s")

// NKFC is actually two steps: compatibility decomposition
// followed by canonical composition
const dzWithCaron = "\u{01c4}"
const dThenZThenCaron = "DZ\u{030c}"
const dThenZCaron = "D\u{017d}"
assert(dzWithCaron !== dThenZThenCaron)
assert(dzWithCaron.normalize("NFKD") === dThenZThenCaron)
assert(dThenZThenCaron.normalize("NFKC") === dThenZCaron)
