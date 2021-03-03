players = {}

for line in io.lines() do
  team, name, games, points = line:match("([^,]+),([^,]+),(%d+),(%d+)")
  if tonumber(games) >= 15 then
    table.insert(players, {name=name, team=team, ppg=points/games})
  end
end

table.sort(players, function (p1, p2) return p1.ppg > p2.ppg end)

for index, player in ipairs(players) do
  if index > 10 then 
    break
  end
  format = "%-22s%-4s%8.3f"
  print(string.format(format, player.name, player.team, player.ppg))
end
