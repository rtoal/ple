circle =
  radius: 10,
  area: -> Math.PI * @radius * @radius
  circumference: -> 2 * Math.PI * @radius

console.log "#{circle.area()} #{circle.circumference()}"
