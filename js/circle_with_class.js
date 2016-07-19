class Circle {
  constructor(centerX=0, centerY=0, radius=1, color='black') {
    this.x = centerX;
    this.y = centerY;
    this.radius = radius;
    this.color = color;
  }
  area() {return Math.PI * this.radius * this.radius;}
  circumference() {return 2 * Math.PI * this.radius;}
}

const assert = require('assert');
const c = new Circle(1, 5);
assert(c.circumference() === 2 * Math.PI);
assert(typeof Circle === 'function');
