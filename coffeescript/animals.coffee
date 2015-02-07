class Animal
  constructor: (@name) ->
  speak: -> "#{@name} says #{@sound()}"

class Cow extends Animal
  sound: -> "moooo"

class Horse extends Animal
  sound: -> "neigh"

class Sheep extends Animal
  sound: -> "baaaa"

s = new Horse "CJ"
console.log s.speak()
c = new Cow "Bessie"
console.log c.speak()
console.log new Sheep("Little Lamb").speak()
