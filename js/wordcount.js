import readline from "readline"
const reader = readline.createInterface({ input: process.stdin })
const counts = new Map()

reader
  .on("line", line => {
    for (let [word] of line.toLowerCase().matchAll(/[\p{L}’']+/gu)) {
      counts.set(word, (counts.get(word) ?? 0) + 1)
    }
  })
  .on("close", () => {
    for (let [word, count] of [...counts.entries()].sort()) {
      console.log(`${word} ${count}`)
    }
  })
