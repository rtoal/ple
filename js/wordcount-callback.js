import fs from "fs"

fs.readFile(process.argv[2], (error, data) => {
  if (error) {
    console.error(`${error}`)
    process.exit(1)
  }
  const counts = new Map()
  const pattern = /[\p{L}’']+/gu
  for (let [word] of `${data}`.toLowerCase().matchAll(pattern)) {
    counts.set(word, (counts.get(word) ?? 0) + 1)
  }
  for (let [word, count] of [...counts.entries()].sort()) {
    console.log(`${word} ${count}`)
  }
})
