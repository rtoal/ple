import assert from "assert/strict"

const f = (x, y) => x + y
const g = x => y => x + y

assert(f(5, 13) == 18) // Pass arguments together
assert(g(5)(13) == 18) // Pass arguments one at a time

const addFive = g(5) // Partial application
assert(addFive(13) == 18)
