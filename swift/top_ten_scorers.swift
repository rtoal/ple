import Foundation

struct Player {
  let name: String
  let team: String
  let ppg: Double
}

var players = [Player]()

while let line = readLine() {
  let info = line.components(separatedBy: ",")
  if Int(info[2])! >= 15 {
    players.append(Player(name: info[1], team: info[0], ppg: Double(info[3])!/Double(info[2])!))
  }
}

for player in players.sorted (by: {$0.ppg > $1.ppg}) [..<10] {
  let name = player.name.padding(toLength: 22, withPad: " ", startingAt: 0)
  let team = player.team.padding(toLength: 4, withPad: " ", startingAt: 0)
  print("\(name)\(team)\(String(format: "%8.2f", player.ppg))")
}
