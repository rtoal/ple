const unitCircle = {
  x: 0,
  y: 0,
  radius: 1,
  color: 'black',
  area() {return Math.PI * this.radius * this.radius},
  circumference() {return 2 * Math.PI * this.radius}
};

const c1 = Object.create(unitCircle);
c1.x = 3;
c1.color = 'green';

const c2 = Object.create(unitCircle);
c2.radius = 5;

const c3 = Object.create(unitCircle);

const assert = require('assert')
assert(c2.color === 'black' && c2.area() === 25 * Math.PI);
assert(c3.y === 0 && c3.area() === Math.PI);
