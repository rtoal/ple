class Animal
  constructor: (@name) ->
  speak: -> "#{@name} says #{@sound()}"

class Cow extends Animal
  sound: -> 'moooo'

class Horse extends Animal
  sound: -> 'neigh'

class Sheep extends Animal
  sound: -> 'baaaa'

assert = require 'assert'
h = new Horse 'CJ'
assert h.speak() is 'CJ says neigh'
c = new Cow 'Bessie'
assert c.speak() is 'Bessie says moooo'
assert new Sheep('Little Lamb').speak() is 'Little Lamb says baaaa'
