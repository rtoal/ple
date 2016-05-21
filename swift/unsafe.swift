var p: UnsafeMutablePointer<Int>
// p is not allocated yet, using it here would be an error
p = UnsafeMutablePointer<Int>.alloc(1)
// allocated but not initialized, p.memory is an arbitarary integer
p.memory = 8
// now p is initialized
assert(p.memory == 8)
p.destroy()
// at this point, the memory p points to is "garbage"
p.dealloc(1)
// now the memory is all freed up

