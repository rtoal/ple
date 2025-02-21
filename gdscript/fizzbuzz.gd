extends SceneTree

func fizzbuzz():
	var num = [0]
	return func():
		var answer:String = ""
		num[0] += 1
		if num[0] % 3 == 0: answer += "Fizz"
		if num[0] % 5 == 0: answer += "Buzz"
		return answer if answer else num[0]


func _init():
	var game1:Callable = fizzbuzz()
	var game2:Callable = fizzbuzz()
	for i in range(20):
		print(game1.call())
	print()
	for i in range(10):
		print(game2.call())
	quit()
