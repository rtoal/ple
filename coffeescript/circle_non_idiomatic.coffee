# Note: this is NOT idiomatic CoffeeScript.

Circle = (x=0, y=0, radius=1, color='black') ->
  [@x, @y, @radius, @color] = [x, y, radius, color]

Circle.prototype.area = ->
  Math.PI * @radius * @radius

Circle.prototype.circumference = ->
  2 * Math.PI * @radius

circles = [(new Circle 3, 5, 10, 'blue'), (new Circle)]
console.log c.area(), c.circumference() for c in circles