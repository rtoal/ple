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
    var customSound: String?
    
    override init(name: String) {
        super.init(name: name)
    }
    
    convenience init() {
        self.init(name: "Mr. Ed")
    }
    
    init(name: String, customSound: String?) {
        super.init(name: name)
        self.customSound = customSound
    }
    
    convenience init(customSound: String?){
        self.init(name: "Secretariat", customSound: customSound)
        self.customSound = customSound
    }

    override func sound() -> String {
        let sound = self.customSound ?? "neigh"
        return sound
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
let s: Animal = Horse(name: "Secretariat", customSound: "I'm a winner")
let b: Animal = Horse(customSound: "I'm a winner")
let j: Animal = Horse(name: "Mr. Ed")
let k: Animal = Horse()
assert(s.speak() == b.speak())
assert(j.name == k.name)
