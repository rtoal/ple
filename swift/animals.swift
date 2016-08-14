class Animal {
    let name: String

    init(name: String) {
        self.name = name
    }

    func sound() -> String {
        preconditionFailure("This method must be overridden")
    }

    func speak() -> String {
        return "\(self.name) says \(self.sound())"
    }
}

class Cow: Animal {
    override init(name: String) {
        super.init(name: name)
    }

    override func sound() -> String {
        return "moooo"
    }
}

class Horse: Animal {
    override init(name: String) {
        super.init(name: name)
    }

    override func sound() -> String {
        return "neigh"
    }
}

class Sheep: Animal {
    override init(name: String) {
        super.init(name: name)
    }

    override func sound() -> String {
        return "baaaa"
    }
}

let h: Animal = Horse(name: "CJ")
assert(h.speak() == "CJ says neigh")
let c: Animal = Cow(name: "Bessie")
assert(c.speak() == "Bessie says moooo")
assert(Sheep(name:"Little Lamb").speak() == "Little Lamb says baaaa")
