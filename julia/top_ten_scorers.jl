using Printf

struct Player
    team::String
    name::String
    games::Int
    ppg::Float64
end

function Player(line::Vector{SubString{String}})
    points = parse(Float64, line[4])
    games = parse(Int, line[3])
    return Player(line[1], line[2], games, points / games)
end

report(p::Player) = @sprintf("%-22s%-4s%8.2f", p.name, p.team, p.ppg)

players = Vector{Player}()
for line in eachline(stdin)
    player = Player(split(line, ","))
    if player.games >= 15
        push!(players, player)
    end
end
sort!(players, by=player -> player.ppg, rev=true)
for player in players[1:10]
    println(report(player))
end
