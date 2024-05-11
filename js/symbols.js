import assert from "node:assert"

let s1 = Symbol.for("open")
let s2 = Symbol.for("open")
assert.equal(typeof s1, "symbol")
assert.equal(s1, s2)

let s3 = Symbol("open")
let s4 = Symbol("open")
assert.equal(typeof s3, "symbol")
assert.notEqual(s3, s4)

let oneTwoThree = {
  *[Symbol.iterator]() {
    yield 1
    yield 2
    yield 3
  },
}

for (let count of oneTwoThree) {
  console.log(count)
}
