func isOrdered<T: Comparable>(_ a: [T]) -> Bool {
    return a.isEmpty || (1..<a.count).allSatisfy { i in a[i-1] < a[i] }
}

assert(isOrdered([1, 2, 3]))
assert(!isOrdered([1, 3, 2]))
assert(isOrdered(["a", "abc", "bar", "bat"]))
assert(!isOrdered(["a", "bat", "bar", "abc"]))
