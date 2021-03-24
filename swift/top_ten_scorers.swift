import Foundation

struct Player {
    let name: String
    let team: String
    let games: Int
    let points: Int
    var ppg: Double { return Double(points) / Double(games) }
    init(_ line: [String]) {
        self.name = line[1]
        self.team = line[0]
        self.games = Int(line[2])!
        self.points = Int(line[3])!
    }
}

var players = [Player]()

while let line = readLine() {
    let player = Player(line.components(separatedBy: ","))
    if player.games >= 15 {
        players.append(player)
    }
}

extension String {
    func padRight(to count: Int) -> String {
        return "\(self)\(String(repeating: " ", count: count - self.count))"
    }
}

for player in players.sorted (by: {$0.ppg > $1.ppg}) [..<10] {
    let name = player.name.padRight(to: 22)
    let team = player.team.padRight(to: 4)
    print("\(name)\(team)\(String(format: "%8.2f", player.ppg))")
}
