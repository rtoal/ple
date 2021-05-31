import assert from "assert/strict"

const x = [1, 2, 3]
const y = [4, 5, 6]

function f(a, b) {
  // Change *parameter* and note the argument is still intact!
  a = 300
  assert.deepEqual(x, [1, 2, 3])
  // Change *property* of parameter, see change through argument
  b[1] = 400
  assert.deepEqual(y, [4, 400, 6])
}

f(x, y)
