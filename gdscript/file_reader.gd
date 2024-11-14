extends SceneTree

func _init():
	var args = Array(OS.get_cmdline_args())
	if len(args) != 3:
		print("ERROR: you must have exactly 1 argument.")
		quit()
		return
	print(FileAccess.open(args[2], FileAccess.READ).get_as_text())
	quit()