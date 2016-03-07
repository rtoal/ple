class Person {
    var name: String
    var supervisor: Person? = nil

    init(name: String, supervisor: Person? = nil) {
        self.name = name
        self.supervisor = supervisor
    }
}

var a = Person(name: "Alice")
var b = Person(name: "Bob", supervisor: a)
assert(a.supervisor?.name == nil)
assert(b.supervisor?.name == "Alice")
