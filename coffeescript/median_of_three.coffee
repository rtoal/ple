medianOfThree = (x, y, z) ->
  return x + y + z - (Math.max x, y, z) - Math.min x, y, z

numbers = [80, 20, 55]
console.log medianOfThree numbers...    # args will be unpacked
