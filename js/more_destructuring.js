import assert from "assert/strict"

let {
  place: {
    name: mountain,
    loc: [lat, lon],
  },
} = {
  place: { name: "Sagarmatha", loc: [27.9881, 86.9253] },
}

assert(mountain === "Sagarmatha")
assert(lat === 27.9881)
assert(lon === 86.9253)
