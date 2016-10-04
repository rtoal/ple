enum BadLength: Error {
    case tooLong(by: Int)
    case tooShort
}

func third() throws -> Int {
    throw BadLength.tooLong(by: 3)
}

func second() -> Int {
    let x: Int? = try? third()
    return x ?? 6
}

func first() {
    print(second())
}

first()
