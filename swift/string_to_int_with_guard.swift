for s in ["42", "dog", "3xy", "-2E3", "-1"] {
    guard let i = Int(s) else {
        print("\"\(s)\" can't be parsed to an integer")
        continue
    }
    print("\"\(s)\" parsed as an integer is \(i)")
}
