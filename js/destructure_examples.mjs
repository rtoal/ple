import assert from "assert/strict"

let [x, y] = [1, 3]
let { a, b: z, c } = { a: 5, b: 8, c: 13 }
// Note the shorthand property syntax: {a} means {a:a}

assert.deepEqual([x, y, a, z, c], [1, 3, 5, 8, 13])
