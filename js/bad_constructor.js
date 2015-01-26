function newCircleMadePoorly(centerX, centerY, radius, color) {
  return {
    x: centerX || 0,
    y: centerY || 0,
    radius: radius || 1,
    color: color || 'black',
    area: function () {return Math.PI * this.radius * this.radius},
    circumference: function () {return 2 * Math.PI * this.radius}
  }
}