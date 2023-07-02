import assert from "assert/strict"

const weekdays = ["Mo", "Tu", "We", "Th", "Fr"]
const days = ["Su", ...weekdays, "Sa"]
assert.equal(days.join(""), "SuMoTuWeThFrSa")

const center = { x: 3, y: 5 }
const circle = { ...center, radius: 13, color: "blue" }
assert.deepEqual(circle, { radius: 13, x: 3, y: 5, color: "blue" })
