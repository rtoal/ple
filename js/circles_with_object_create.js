let unitCircle = {
  x: 0,
  y: 0,
  radius: 1,
  color: 'black',
  area() {return Math.PI * this.radius * this.radius},
  circumference() {return 2 * Math.PI * this.radius}
};

let c1 = Object.create(unitCircle);
c1.x = 3;
c1.color = 'green';

let c2 = Object.create(unitCircle);
c2.radius = 5;

let c3 = Object.create(unitCircle);
