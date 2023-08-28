type Sphere = { radius: number }
type Box = { length: number; width: number; depth: number }
type Shape = Sphere | Box

function isSphere(shape: Shape): shape is Sphere {
  return "radius" in shape
}

function volume(shape: Shape) {
  if (isSphere(shape)) {
    return (4 / 3) * Math.PI * shape.radius ** 3
  } else {
    return shape.length * shape.width * shape.depth
  }
}

console.log(volume({ radius: 2 }))
console.log(volume({ length: 5, width: 2, depth: 3 }))
