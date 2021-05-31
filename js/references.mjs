import assert from "assert/strict"

const a = { x: 3, y: 5 } // creates a new object
const b = { x: 3, y: 5 } // creates a new object
const c = a // c and a "point to" the same object
assert(a !== b)
assert(a === c)
