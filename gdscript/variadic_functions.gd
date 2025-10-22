extends SceneTree

func sum(num, ...nums) -> int:
	var acc = num
	for n in nums:
		acc += n
	return acc

func _init() -> void:
	assert(sum(0) == 0)
	assert(sum(6,7) == 13)
	assert(sum(9,1,5) == 15)
	assert(sum(3,6,2,6) == 17)

	# Function to decompose lists into separate arguments.
	assert(sum.callv([4,3,6,7]) == 20)
	quit()