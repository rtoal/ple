import readline from "readline/promises"
const reader = readline.createInterface(process.stdin)

const players = []

for await (const line of reader) {
  let [team, name, games, points] = line.split(",")
  if (games >= 15) {
    players.push({ name, team, ppg: points / games })
  }
}
const topTen = players.sort((p1, p2) => p2.ppg - p1.ppg).slice(0, 10)
for (let { name, team, ppg } of topTen) {
  console.log(
    `${name.padEnd(22)}${team.padEnd(4)}${ppg.toFixed(2).padStart(8)}`
  )
}
