import assert from "assert"

function Circle(centerX = 0, centerY = 0, radius = 1, color = "black") {
  this.x = centerX
  this.y = centerY
  this.radius = radius
  this.color = color
}

Circle.prototype.area = function () {
  return Math.PI * this.radius * this.radius
}

Circle.prototype.circumference = function () {
  return 2 * Math.PI * this.radius
}

const c = new Circle(1, 5)
assert(c.x === 1 && c.y === 5 && c.radius === 1 && c.color === "black")
assert(c.area() === Math.PI)
assert(c.circumference() === 2 * Math.PI)
assert(Object.getPrototypeOf(c) === Circle.prototype)
assert(c.constructor) === Circle
assert(typeof c === "object")
