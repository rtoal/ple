enum BadLength: ErrorType {
    case TooLong(by: Int)
    case TooShort
}

func third() throws -> Int {
    throw BadLength.TooLong(by: 3)
}

func second() -> Int {
    let x: Int? = try? third()
    return x ?? 6
}

func first() {
    print(second())
}

first()
