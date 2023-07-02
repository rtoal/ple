import assert from "assert/strict"

function* firstFiveSquares() {
  for (let i = 1; i <= 5; i++) {
    yield i ** 2
  }
}

// Three ways to use a generator

// 1. Obtain the values on demand
const g = firstFiveSquares()
assert.deepEqual(g.next(), { value: 1, done: false })
assert.deepEqual(g.next(), { value: 4, done: false })
assert.deepEqual(g.next(), { value: 9, done: false })
assert.deepEqual(g.next(), { value: 16, done: false })
assert.deepEqual(g.next(), { value: 25, done: false })
assert.deepEqual(g.next(), { value: undefined, done: true })

// 2. Use for-of to iterate through generated values
for (let s of firstFiveSquares()) {
  console.log(s)
}

// 3. Roll up generated values all at once
assert.deepEqual([...firstFiveSquares()], [1, 4, 9, 16, 25])
