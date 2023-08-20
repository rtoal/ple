enum BadLength: Error {
    case tooLong(by: Int)
    case tooShort
}

func checkBetween5And10(_ s: String) throws -> String {
    guard s.count >= 5 else {
        throw BadLength.tooShort
    }
    guard s.count <= 10 else {
        throw BadLength.tooLong(by: s.count - 10)
    }
    return s
}

func checkBetween3And5(_ s: String) -> Result<String, BadLength> {
    guard s.count >= 3  else {
        return .failure(.tooShort)
    }
    guard s.count <= 5 else {
        return .failure(.tooLong(by: s.count - 5))
    }
    return .success(s)
}

do {
    let s = try checkBetween5And10("0123456789ABCDEF")
    print("\(s) is okay")
} catch BadLength.tooShort {
    print("Too short")
} catch BadLength.tooLong(let howMuch) {
    print("Too long by \(howMuch)")
}

switch checkBetween3And5("11111") {
case .success(let s):
    print("\(s) is okay")
case .failure(BadLength.tooShort):
    print("Too short")
case .failure(BadLength.tooLong(let howMuch)):
    print("Too long by \(howMuch)")
}
