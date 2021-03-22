import assert from "assert"

function* firstFiveSquares() {
  for (let i = 1; i <= 5; i++) {
    yield i ** 2
  }
}

// Obtain the values on demand
const g = firstFiveSquares()
assert.deepStrictEqual(g.next(), { value: 1, done: false })
assert.deepStrictEqual(g.next(), { value: 4, done: false })
assert.deepStrictEqual(g.next(), { value: 9, done: false })
assert.deepStrictEqual(g.next(), { value: 16, done: false })
assert.deepStrictEqual(g.next(), { value: 25, done: false })
assert.deepStrictEqual(g.next(), { value: undefined, done: true })

// Use for-of to iterate through generated values
for (let s of firstFiveSquares()) {
  console.log(s)
}

// Roll up generated values all at once
assert.deepStrictEqual([...firstFiveSquares()], [1, 4, 9, 16, 25])
