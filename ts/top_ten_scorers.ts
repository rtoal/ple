import * as readline from "readline"
const reader = readline.createInterface(process.stdin)

interface Player {
  name: string
  team: string
  ppg: number
}
const players: Player[] = []

for await (const line of reader) {
  let [team, name, games, points] = line.split(",")
  if (Number(games) >= 15) {
    players.push({ name, team, ppg: Number(points) / Number(games) })
  }
}
const topTen = players.sort((p1, p2) => p2.ppg - p1.ppg).slice(0, 10)
for (let { name, team, ppg } of topTen) {
  console.log(
    `${name.padEnd(22)}${team.padEnd(4)}${ppg.toFixed(2).padStart(8)}`
  )
}
