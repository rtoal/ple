import Foundation

struct Player {
    let name: String
    let team: String
    let ppg: Double
}

var players = [Player]()
while let line = readLine() {
    let info = line.components(separatedBy: ",")
    guard let games = Int(info[2]) else { continue }
    guard let points = Int(info[3]) else { continue }
    let player = Player(
        name: info[1],
        team: info[0],
        ppg: Double(points) / Double(games)
    )
    if games >= 15 {
        players.append(player)
    }
}
for player in players.sorted(by: {$0.ppg > $1.ppg})[..<10] {
    let name = player.name.padding(
        toLength: 22, withPad: " ", startingAt: 0)
    let team = player.team.padding(
        toLength: 4, withPad: " ", startingAt: 0)
    print("\(name)\(team)\(String(format: "%8.2f", player.ppg))")
}
