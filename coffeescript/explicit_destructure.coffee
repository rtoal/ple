# NOTE: This is NOT idiomatic CoffeeScript!
# Use destructing assignment instead!

destination = {place: {name: 'Everest', loc: [27.9881,86.9253]}}
mountain = destination.place.name
lat = destination.place.loc[0]
lon = destination.place.loc[1]

assert = require 'assert'
assert.deepStrictEqual [lat,lon,mountain], [27.9881,86.9253,'Everest']
