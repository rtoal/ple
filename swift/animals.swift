// Rather than abstract classes, Swift uses protocols to compose behavior
protocol Animal {
    var name: String {get}
    
    var sound: String {get}
    
    func speak() -> String
}

// Protocol extensions allow adaptees to get default implementations
extension Animal {
    func speak() -> String {
        return "\(name) says \(sound)"
    }
}

struct Cow: Animal {
    let name: String
    let sound = "moooo"
}

struct Horse: Animal {
    let name: String
    let sound = "neigh"
}

struct Sheep: Animal {
    let name: String
    let sound = "baaaa"
}

let h: Animal = Horse(name: "CJ")
assert(h.speak() == "CJ says neigh")
let c: Animal = Cow(name: "Bessie")
assert(c.speak() == "Bessie says moooo")
assert(Sheep(name: "Little Lamb").speak() == "Little Lamb says baaaa")
