type Pair<T, U> = {
  first: T
  second: U
}

function duplicate<T>(x: T): Pair<T, T> {
  return { first: x, second: x }
}

function lastElement<T>(a: Array<T>): T | null {
  return a.length == 0 ? null : a[a.length - 1]
}

console.log(duplicate(5))
console.log(duplicate(8))
console.log(lastElement([3, 8, 21, 1]))
console.log(lastElement(["ready", "set", "go"]))
console.log(lastElement([]))
