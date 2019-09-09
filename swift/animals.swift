// Swift does not have abstract classes, but instead relies heavily on protocols to compose behaviour
protocol Animal {
    var name: String {get}
    
    var sound: String {get}
    
    func speak() -> String
}

// By extending a protocol, compliant classes or structs will get default implementations
extension Animal {
    func speak() -> String {
        return "\(name) says \(sound)"
    }
}

struct Cow: Animal {
    // Structs without explicit inits will have a default init for all its stored properties that aren't otherwise set
    let name: String
    // By setting `sound` directly, it needs not be specified in the default init
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
assert(Sheep(name:"Little Lamb").speak() == "Little Lamb says baaaa")
