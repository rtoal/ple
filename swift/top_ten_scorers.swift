import Foundation

struct MalformedLine: Error {}

struct Player {
    let name: String
    let team: String
    let games: Int
    let points: Int
    var ppg: Double { return Double(points) / Double(games) }
}

var players = [Player]()
do {
    while let line = readLine() {
        let info = line.components(separatedBy: ",")
        let player = Player(
          name: info[1],
          team: info[0],
          games: try Int(info[2]) ?? { throw MalformedLine() }(),
          points: try Int(info[3]) ?? { throw MalformedLine() }()
        )
        if player.games >= 15 {
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
} catch is MalformedLine {
    print("Error reading file: line is malformed")
}
