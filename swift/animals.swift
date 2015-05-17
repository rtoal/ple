import Foundation

class Animal {
    private let name : String?
    
    init (name: String) {
        self.name = name
    }
    
    func sound () -> String {
        preconditionFailure("This method must be overridden")
    }
    
    func speak () {
        println("\(self.name!) says \(self.sound())")
    }
}

class Cow : Animal {
    override init (name : String) {
        super.init(name: name)
    }
    
    override func sound() -> String {
        return "moooo"
    }
}

class Horse : Animal {
    override init (name : String) {
        super.init(name: name)
    }
    
    override func sound() -> String {
        return "neigh"
    }
}

class Sheep : Animal {
    override init (name : String) {
        super.init(name: name)
    }
    
    override func sound() -> String {
        return "baaaa"
    }
}

let s : Animal = Horse(name : "CJ")
s.speak()
let c: Animal = Cow(name: "Bessie")
c.speak()
Sheep(name:"Little Lamb").speak()