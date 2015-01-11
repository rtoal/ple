var unitCircle = {
  x: 0,
  y: 0,
  radius: 1,
  color: 'black',
  area: function () {return Math.PI * this.radius * this.radius},
  circumference: function () {return 2 * Math.PI * this.radius}
};

var c1 = Object.create(unitCircle);
c1.x = 3;
c1.color = 'green';

var c2 = Object.create(unitCircle);
c2.radius = 5;

var c3 = Object.create(unitCircle);
