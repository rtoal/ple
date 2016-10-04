enum BadLength: Error {
    case tooLong(by: Int)
    case tooShort
}

func third() throws -> () {
    throw BadLength.tooLong(by: 3)
}

func second() throws {
    try third()
}

func first() {
    do {
        try second()
    } catch BadLength.tooShort {
        print("Too short")
    } catch BadLength.tooLong(let howMuch) {
        print("Too long by \(howMuch)")
    } catch {
        print("Something else")
    }
}

first()
