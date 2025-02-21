extends SceneTree

func _init():
	var players = []
	var data = OS.read_string_from_stdin().rstrip("\n").split("\n")
	for line in data:
		var player_info = line.split(",")
		var team = player_info[0]
		var name = player_info[1]
		var games = player_info[2] as float
		var points = player_info[3] as float
		if games >= 15:
			players.append([name, team, points / games])
	players.sort_custom(func (a, b): return a[2] > b[2])
	for player in players.slice(0, 10):
		print("%-22s%-4s%8.2f" % player)
	quit()