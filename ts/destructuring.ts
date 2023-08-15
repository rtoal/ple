import { strict as assert } from "assert"

let person: { name: string; age: number } = {
  name: "Alice",
  age: 32,
}

let { name: n, age: a } = person
assert(n === "Alice" && a === 32)
