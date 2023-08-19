import { strict as assert } from "assert"

function compose<T, U, V>(f: (x: T) => U, g: (y: U) => V) {
  return (y: T) => g(f(y))
}

const lengthThenSqrt = compose((s: string) => s.length, Math.sqrt)
const encodedSquare = compose((x: number) => `${x * x}`, encodeURI)
const fourthRoot = compose(Math.sqrt, Math.sqrt)

assert.deepEqual(lengthThenSqrt("nineChars"), 3)
assert.deepEqual(encodedSquare(2.5), "6.25")
assert.deepEqual(fourthRoot(256), 4)
