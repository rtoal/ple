import * as readline from "readline"
const reader = readline.createInterface(process.stdin, null)

const players = []

reader.on("line", line => {
  let [team, name, games, points] = line.split(",")
  if (Number(games) >= 15) {
    players.push({ name, team, ppg: Number(points) / Number(games) })
  }
})
reader.on("close", () => {
  const topTen = players.sort((p1, p2) => p2.ppg - p1.ppg).slice(0, 10)
  for (let { name, team, ppg } of topTen) {
    console.log(
      `${name.padEnd(22)}${team.padEnd(4)}${ppg.toFixed(2).padStart(8)}`
    )
  }
})
