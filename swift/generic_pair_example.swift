func twice<T>(_ x: T) -> [T] {
    return [x, x]
}

assert(twice(5) == [5, 5])
assert(twice("yak") == ["yak", "yak"])
