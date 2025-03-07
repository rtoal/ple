import ballerina/io;
import ballerina/regex;

type Player record {
    readonly string name;
    readonly string team;
    readonly float avg;
};

function format(Player player) returns string {
    return player["name"].padEnd(22) +
           player["team"].padEnd(4) +
           player["avg"].toFixedString(2).padStart(8);
}

public function main(string[] data) {
    Player[] players = from string line in data
                       let string[] playerInfo = regex:split(line, ",")
                       let float|error games = float:fromString(playerInfo[2])
                       let float|error points = float:fromString(playerInfo[3])
                       where games is float && points is float && games >= 15.0
                       let float avg = points / games
                       order by avg descending
                       limit 10
                       select {name: playerInfo[1], team: playerInfo[0], avg: avg};
    foreach Player player in players {
        io:println(format(player));
    }
}