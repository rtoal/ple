function Circle(centerX=0, centerY=0, radius=1, color='black') {
  this.x = centerX;
  this.y = centerY;
  this.radius = radius;
  this.color = color;
}

Circle.prototype.area = function () {
  return Math.PI * this.radius * this.radius;
};

Circle.prototype.circumference = function () {
  return 2 * Math.PI * this.radius;
};

import assert from 'assert';
let c = new Circle(1, 5);
assert.deepEqual(c, {x:1, y:5, radius:1, color:'black'})
assert(c.area() === Math.PI);
