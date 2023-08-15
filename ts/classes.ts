import { strict as assert } from "assert"

class Ball {
  radius: number = 1
  color: string = "white"
}

let smallBall: Ball = new Ball()
let largeBall: Ball = { radius: 20, color: "red" }
assert(smallBall.radius === 1 && smallBall.color === "white")
assert(largeBall.radius === 20 && largeBall.color === "red")

class Sphere {
  radius: number
  color: string
  constructor(radius: number, color: string) {
    this.radius = radius
    this.color = color
  }
}

let sphere: Sphere = new Sphere(2, "red")
assert(sphere.radius === 2 && sphere.color === "red")

class Globe {
  constructor(public radius: number, public color: string) {}
}

let globe: Globe = new Globe(3, "blue")
assert(globe.radius === 3)
assert(globe.color === "blue")

// interface Moveable {
//   move(dx: number, dy: number): void
// }

// class Point2D implements Moveable {
//   x: number = 0
//   y: number = 0
//   move() {}
// }

// class Point3D extends Point2D {
//   z: number = 0
// }

// class Vehicle implements Moveable {
//   move(): void {
//     console.log("Moving...")
//   }
// }
