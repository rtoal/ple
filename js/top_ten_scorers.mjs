import readline from "readline"
const reader = readline.createInterface(process.stdin, null)

const players = []

reader
  .on("line", line => {
    let [_, team, name, games, points] = line.match(
      /([^,]+),([^,]+),(\d+),(\d+)/
    )
    if (games >= 15) {
      players.push({ name, team, ppg: points / games })
    }
  })
  .on("close", () => {
    players
      .sort((p1, p2) => p2.ppg - p1.ppg)
      .slice(0, 10)
      .forEach(p => {
        console.log(
          `${p.name.padEnd(22)}${p.team.padEnd(4)}${p.ppg
            .toFixed(2)
            .padStart(8)}`
        )
      })
  })
