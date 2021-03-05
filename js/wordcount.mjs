import readline from "readline"
const reader = readline.createInterface(process.stdin, null)
const counts = new Map()

reader
  .on("line", line => {
    for (let word of line.toLowerCase().match(/[\p{L}']+/gu) || []) {
      counts.set(word, (counts.get(word) || 0) + 1)
    }
  })
  .on("close", () => {
    for (let word of Array.from(counts.keys()).sort()) {
      console.log(`${word} ${counts.get(word)}`)
    }
  })
