medianOfThree = (x, y, z) ->
  # Not the most efficient code
  return x + y + z - (Math.max x, y, z) - Math.min x, y, z

# An example of a call using splats
numbers = [80, 20, 55]
console.log medianOfThree numbers...