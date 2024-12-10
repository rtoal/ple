extends SceneTree

func print_permutations(a, n):
	if n <= 0:
		print("\t".join(a))
	else:
		for i in range(n):
			print_permutations(a, n - 1)
			var j = 0 if n % 2 == 0 else i
			var temp = a[j] 
			a[j] = a[n] 
			a[n] = temp 
		print_permutations(a, n - 1)

func _init():
	var args = Array(OS.get_cmdline_args())
	if len(args) < 3:
		print("More than 1 argument is required.")
	else:
		print_permutations(args.slice(2), len(args.slice(2)) - 1)
	quit()
