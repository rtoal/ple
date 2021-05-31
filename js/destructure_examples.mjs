import assert from "assert/strict"

// Binding with an array pattern
let [x, y] = [1, 3]

// Binding with an object pattern
// Note the shorthand property syntax: {a} means {a:a}
let { a, b: z, c } = { a: 5, b: 8, c: 13 }

assert.deepEqual([x, y, a, z, c], [1, 3, 5, 8, 13])

// Patterns can be quite complex
let {
  place: {
    name: mountain,
    loc: [lat, lon],
  },
} = {
  place: { name: "Sagarmatha", loc: [27.9881, 86.9253] },
}

assert(mountain === "Sagarmatha")
assert(lat === 27.9881)
assert(lon === 86.9253)
