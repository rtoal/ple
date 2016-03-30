enum BadLength: ErrorType {
    case TooLong(by: Int)
    case TooShort
}

func third() throws -> Int {
    throw BadLength.TooLong(by: 3)
}

func second() -> Int {
    return (try? third()) ?? 5
}

func first() {
    print(second())
}

first()
