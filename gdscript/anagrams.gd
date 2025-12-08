extends SceneTree

func generate_permutations(a, n):
	if n <= 0:
		print("".join(a))
	else:
		for i in range(n):
			generate_permutations(a, n - 1)
			var j = 0 if n % 2 == 0 else i
			var temp = a[j] 
			a[j] = a[n] 
			a[n] = temp 
		generate_permutations(a, n - 1)

func _init():
	var args = Array(OS.get_cmdline_args())
	if len(args) != 3:
		print("ERROR: There must be exactly 1 argument.")
		quit()
		return
	else:
		generate_permutations(args[2].split(), len(args[2]) - 1)
	quit()
