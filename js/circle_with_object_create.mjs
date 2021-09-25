import assert from "assert/strict"

const unitCircle = {
  x: 0,
  y: 0,
  radius: 1,
  color: "black",
  area() {
    return Math.PI * this.radius * this.radius
  },
  circumference() {
    return 2 * Math.PI * this.radius
  },
}

const c1 = Object.create(unitCircle)
c1.x = 3
c1.color = "green"

const c2 = Object.create(unitCircle)
c2.radius = 5

const c3 = Object.create(unitCircle)

assert.deepEqual([c1.x, c1.y, c1.radius, c1.color], [3, 0, 1, "green"])
assert.deepEqual([c2.x, c2.y, c2.radius, c2.color], [0, 0, 5, "black"])
assert.deepEqual([c3.x, c3.y, c3.radius, c3.color], [0, 0, 1, "black"])
assert(c2.area() === 25 * Math.PI)
assert(c3.area() === Math.PI)
