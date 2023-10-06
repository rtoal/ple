// Name is required, manager is optional
class Employee(val name: String, val manager: Employee? = null) {
    infix fun manages(e: Employee) = e.manager == this
}

val alice = Employee("Alice") // Alice has no manager
val bob = Employee("Bob", manager = alice)

// Compiler will not allow using an Employee? as an Employee
// println(alice.supervisor.name) // Will not compile
// println(bob.supervisor.name) // Will not compile either!

// But after a null check, it will
if (bob.manager != null) {
    // Inside this block alice.manager is an Employee, awesome
    assert(bob.manager.name == "Alice")
}

// You can always use the "safe call" operator
assert(alice.manager?.name == null)
assert(bob.manager?.name == "Alice")

// Use the safe call operator with let
bob.manager?.let {
    // Only gets here if supervisor is not null
    assert(it.name == "Alice")
}

// Demonstrate ?: (Elvis operator)
val supervisor = alice.manager?.name ?: "YOUR NAME HERE"
assert(supervisor == "YOUR NAME HERE")

fun reportingChain(e: Employee?, from: List<String>): List<String> {
    val name = e?.name ?: return from
    return reportingChain(e?.manager, from + name)
}
assert(reportingChain(bob, listOf()) == listOf("Bob", "Alice"))

// Demonstrate filterNotNull
val employees = listOf(alice, bob, null, bob)
val managers = employees.filterNotNull().map { it.name }
assert(managers == listOf("Alice", "Bob", "Bob"))

// The not-null assertion operator, !!, use sparingly if at all
println(bob.manager!!.name) // Will print "Alice", lucky duck
try {
    println(alice.manager!!.name) // Please no
} catch (e: NullPointerException) {
    println("Caught NullPointerException")
}
