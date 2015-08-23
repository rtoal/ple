let circle = {
  radius: 10,
  area: function () {return Math.PI * this.radius * this.radius},
  circumference: function () {return 2 * Math.PI * this.radius},
  expand: function (scale) {this.radius *= scale}
};

import assert from 'assert';
assert(circle.area() === 100 * Math.PI);
circle.expand(2);
assert(circle.circumference() === 40 * Math.PI);
