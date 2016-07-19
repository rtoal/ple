const circle = {
  radius: 10,
  area() {return Math.PI * this.radius * this.radius},
  circumference() {return 2 * Math.PI * this.radius},
  expand(scale) {this.radius *= scale}
};

const assert = require('assert');
assert(circle.area() === 100 * Math.PI);
circle.expand(2);
assert(circle.circumference() === 40 * Math.PI);
