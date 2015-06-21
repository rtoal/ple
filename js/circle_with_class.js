class Circle {
  constructor(centerX=0, centerY=0, radius=1, color='black') {
    this.x = centerX;
    this.y = centerY;
    this.radius = radius;
    this.color = color;
  }
  area() {
    return Math.PI * this.radius * this.radius;
  }
  circumference() {
    return 2 * Math.PI * this.radius;
  }
}

let c = new Circle(1, 5);
console.log(c.circumference());       // 6.283185307179586
console.log(typeof Circle);           // function
