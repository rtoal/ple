var p: UnsafeMutablePointer<Int>
// p is not allocated yet, using it here would be an error
p = UnsafeMutablePointer<Int>(allocatingCapacity: 1)
// allocated but not initialized, p.memory is an arbitarary integer
p.pointee = 8
// now p is initialized
assert(p.pointee == 8)
p.deinitialize(count: 1)
// at this point, the memory p points to is "garbage"
p.deallocateCapacity(1)
// now the memory is all freed up
