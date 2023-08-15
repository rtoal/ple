import { strict as assert } from "assert"

interface Shape {
  area: () => number
}

class Circle implements Shape {
  constructor(public radius: number) {}
  area() {
    return Math.PI * this.radius ** 2
  }
}

class Rectangle implements Shape {
  constructor(public width: number, public height: number) {}
  area() {
    return this.width * this.height
  }
}

let shapes: Shape[] = [new Circle(10), new Rectangle(5, 10)]
assert(shapes[0].area() === 314.1592653589793)
assert(shapes[1].area() === 50)
