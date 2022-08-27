type Point = {
  x: number
  y: number
}

interface Coordinate {
  latitude: number
  longitude: number
}

interface Coordinate {
  when: Date
}

const party: Coordinate = {
  latitude: 33.931999,
  longitude: -118.437333,
  when: new Date("2022-08-25T00:30:00Z"),
}
