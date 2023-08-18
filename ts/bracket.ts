function bracket(array: unknown[], item: unknown) {
  return [item, ...array, item]
}

const a = bracket([1, 2, 3], 0) // OK but not too useful...
// console.log(a[1] * 5) // ...because ERR: can't multiply unknown
const b = bracket(["x"], "o") // OK but also not too useful
const c = bracket([1, 2, 3], "x") // OK but too loose with types!

function bracketed<T>(array: T[], item: T) {
  return [item, ...array, item]
}

const d = bracketed([1, 2, 3], 0) // OK and useful
console.log(d[1] * 5) // Yay! d[1] is a number
const e = bracketed(["x"], "o") // OK and useful
// const f = bracketed([1, 2, 3], "x") // Properly an Error!
