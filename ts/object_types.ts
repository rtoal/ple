import { strict as assert } from "assert"

function move(entity: { x: number; y: number }, dx: number, dy: number) {
  entity.x += dx
  entity.y += dy
}

const robot = { name: "Mari", x: 2, y: 2 }
const mars = { type: "Planet", x: 3, y: 20, radius: 100 }
move(robot, 7, 20)
move(mars, 55, -13)
assert(robot.y == 22)

type Point = {
  x: number
  y: number
}

interface Coordinate {
  latitude: number
  longitude: number
}

interface Coordinate {
  when: Date
}

const party: Coordinate = {
  latitude: 33.931999,
  longitude: -118.437333,
  when: new Date("2022-08-25T00:30:00Z"),
}

interface Person {
  name: string
}

interface Employee extends Person {
  title: string
}

let e: Employee = { name: "Allie", title: "CFO" }

type Duration = {
  seconds: number
}

type Instant = {
  when: Date
}

type Period = Instant & Duration

let p: Period = { seconds: 120, when: new Date(1969, 6, 20) }

class Product {
  readonly name: string
  price: number
  constructor(name: string, price: number) {
    this.name = name
    this.price = price
  }
}

let product = new Product("Apple", 1.99)
product.price = 2.99
// product.name = "Banana" // ERROR
