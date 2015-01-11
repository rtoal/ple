class Circle
  constructor: (@x=0, @y=0, @radius=1, @color='black') ->
  area: -> Math.PI * @radius * @radius
  circumference: -> 2 * Math.PI * @radius

circles = [(new Circle 3, 5, 10, 'blue'), (new Circle)]
console.log c.area(), c.circumference() for c in circles