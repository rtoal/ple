extends SceneTree

func _init():
	var regex = RegEx.new()
	regex.compile("[a-z\']+")
	var counts = {}
	for word in regex.search_all(OS.read_string_from_stdin().to_lower()):
		counts.get_or_add(word.get_string(), 0)
		counts[word.get_string()] += 1
	var words = counts.keys()
	words.sort()
	for word in words:
		print("%s %d" % [word, counts[word]])
	quit()