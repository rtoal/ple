var a = [10, 20, 30]
a[2] = 40
a.append(50)
a += [60]
a[1...3] = [5, 6, 7]
assert(a == [10, 5, 6, 7, 60])

let b = [10, 20, 30]
b[2] = 40       // <--- Is a compile time error!
b.append(40)    // <--- Is a compile time error!
