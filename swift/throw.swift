enum BadLength: ErrorType {
    case TooLong(by: Int)
    case TooShort
}

func third() throws -> Int {
    throw BadLength.TooLong(by: 3)
}

func second() throws {
    try third()
}

func first() {
    do {
        try second()
    } catch BadLength.TooShort {
        print("Too short")
    } catch BadLength.TooLong(let howMuch) {
        print("Too long by \(howMuch)")
    } catch {
        print("Something else")
    }
}

first()
