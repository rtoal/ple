for s in ["42", "dog", "3xy", "-2E3", "-1"] {
    if let i = Int(s) {
        print("\"\(s)\" parsed as an integer is \(i)")
    } else {
        print("\"\(s)\" can't be parsed to an integer")
    }
}
