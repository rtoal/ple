import assert from "assert/strict"

const colors = ["red", "green", "blue"]
const tiles = { e: 1, q: 10, k: 5 }

let scratchPad = ""
for (let color of colors) {
  scratchPad += color
}
for (let [character, score] of Object.entries(tiles)) {
  scratchPad += character + score
}

assert(scratchPad === "redgreenbluee1q10k5")
