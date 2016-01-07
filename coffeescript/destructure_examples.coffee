[x,y] = [10,20]             # x gets 10 and y gets 20
[x,y] = [y,x]               # yes, a swap!
{a, b} = {a: 5, b: 3}       # a nice idiom

{place: {name: mountain, loc: [lat, lon]}} = {
    place: {name: 'Everest', loc: [27.9881,86.9253]}}

assert = require 'assert'
assert.deepStrictEqual [x, y, a, b, mountain, lat, lon],
  [20, 10, 5, 3, 'Everest', 27.9881, 86.9253]
