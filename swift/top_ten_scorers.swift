import Foundation

struct MalformedLine: Error {}

extension String {
    func padRight(to count: Int) -> String {
        return "\(self)\(String(repeating: " ", count: count - self.count))"
    }
}

struct Player {
    let name: String
    let team: String
    let games: Int
    let points: Int
    var ppg: Double { return Double(points) / Double(games) }
    init(_ line: [String]) throws {
        self.name = line[1]
        self.team = line[0]
        self.games = try Int(line[2]) ?? { throw MalformedLine() }()
        self.points = try Int(line[3]) ?? { throw MalformedLine() }()
    }
}

var players = [Player]()

do {
    while let line = readLine() {
        let player = try Player(line.components(separatedBy: ","))
        if player.games >= 15 {
            players.append(player)
        }
    }
    for player in players.sorted(by: {$0.ppg > $1.ppg})[..<10] {
        let name = player.name.padRight(to: 22)
        let team = player.team.padRight(to: 4)
        print("\(name)\(team)\(String(format: "%8.2f", player.ppg))")
    }
} catch is MalformedLine {
    print("Error reading file: line is malformed")
}
