class Employee(val name: String) {
    private var manager: Employee = this
    constructor(name: String, manager: Employee) : this(name) {
        this.manager = manager
    }
    infix fun manages(e: Employee) = e.manager == this
}

val alice = Employee("Alice")
val bob = Employee("Bob", manager = alice)
assert(alice manages alice)
assert(alice manages bob)
