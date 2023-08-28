// Type guard
let x: string | number = Math.random() < 0.5 ? "small" : 100
if (typeof x === "string") {
  console.log(x.toUpperCase())
} else {
  console.log(x ** 2)
}

// Assignment narrowing
let y: number | string
y = "hello"
console.log(y.toUpperCase())
y = 3
console.log(y ** 2)

// Control flow narrowing
function nextStep(supervisor: string | null) {
  if (supervisor === null) {
    return "Nothing to do"
  }
  return `Call ${supervisor}` // supervisor is a string
}

// Equality narrowing
function f(x: string | number, y: number | boolean) {
  if (x === y) {
    console.log(x ** 2) // x and y are both numbers
  }
}
