function Circle(centerX, centerY, radius, color) {
  this.x = centerX || 0,
  this.y = centerY || 0,
  this.radius = radius || 1,
  this.color = color || 'black',
}

Circle.prototype.area = function () {
  return Math.PI * this.radius * this.radius
}

Circle.prototype.circumference = function () {
  return 2 * Math.PI * this.radius
}
