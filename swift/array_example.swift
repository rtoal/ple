var a = [10, 20, 30]
var b = [Int](count: 4, repeatedValue: 1)
a[2] = 40
a.append(50)
a += b
assert(a.count == 8)
a[1...3] = [0, 2, 4]
a.removeAtIndex(3)
assert(a == [10, 0, 2, 1, 1, 1, 1])
