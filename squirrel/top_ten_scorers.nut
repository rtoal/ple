class Player
{

    constructor(newTeam, newName, newAverage)
    {
        team = newTeam
        name = newName
        average = newAverage
    }

    function _tostring()
    {
        return format("%-22s%-4s%8.2f\n", name, team, average)
    }

    team = ""
    name = ""
    average = 0.0

}

local data = ""
foreach (byte in stdin.readblob(stdin.len()-2))
{
    data += byte.tochar()
}

local players = []
foreach (line in split(data, "\n", true))
{
    local playerInfo = split(line, ",")
    local team = playerInfo[0]
    local name = playerInfo[1]
    local games = playerInfo[2].tofloat()
    local points = playerInfo[3].tofloat()
    if (games >= 15)
        players.push(Player(team, name, points / games))
}

foreach (i, player in players.sort(@(a, b) b.average <=> a.average))
{
    if (i >= 10)
        break
    print(player)
}