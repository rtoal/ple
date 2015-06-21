let circle = {
  radius: 10,
  area() {return Math.PI * this.radius * this.radius},
  circumference() {return 2 * Math.PI * this.radius},
  expand(scale) {this.radius *= scale}
};

console.log(circle.area());
circle.expand(2);
console.log(circle.circumference());