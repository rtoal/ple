average = (a...) ->
  (a.reduce ((x, y) -> x + y), 0) / a.length

console.log average 7.5, 20, 6, -50, 88  # args will be packed
console.log average()                    # () required if no args
