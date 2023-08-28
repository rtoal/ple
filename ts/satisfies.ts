type Color = string | { r: number; g: number; b: number }

type Thing = {
  name: string
  color: Color
}

const thing1 = { name: "thing1", color: "red" }
const thing2: Thing = { name: "thing2", color: "red" }
const thing3 = { name: "thing1", color: "red" } satisfies Thing

thing1.color.toUpperCase()
// thing2.color.toUpperCase() // ERROR: thing2.color could be an object
thing3.color.toUpperCase()
