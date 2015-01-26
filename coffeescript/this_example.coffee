circle =
  area: -> Math.PI * @radius * @radius
  circumference: -> 2 * Math.PI * @radius

circle.radius = 10
console.log "#{circle.area()} #{circle.circumference()}"
