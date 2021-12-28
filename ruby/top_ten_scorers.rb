players = []

ARGF.each do |line|
  team, name, games, points = line.strip.split ','
  if games.to_i >= 15
    players += [[name, team, points.to_f/games.to_i]]
  end
end

players.sort {|p1, p2| p2[2] - p1[2]}[0, 10].each do |player|
  puts "%-22s%-4s%8.2f" % player
end
