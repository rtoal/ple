// A one liner is all you need
data class User(val id: Int, val email: String)

// Three users
val friend = User(133, "alice@example.com")
val colleague = User(133, "alice@example.com")
var guest = User(205, "bob@example.com")

// Autogenerated toString
assert(friend.toString() == "User(id=133, email=alice@example.com)")

// Autogenerated equals
assert(friend == colleague)
assert(friend.equals(colleague))

// Autogenerated hashCode
assert(friend.hashCode() == colleague.hashCode())

// Autogenerated copy
val newFriend = guest.copy()
assert(newFriend.id == 205)
assert(newFriend.email == "bob@example.com")
assert(newFriend == guest)
assert(newFriend !== guest) // different instances

// Autogenerated component methods
assert(friend.component1() == 133)
assert(friend.component2() == "alice@example.com")

// Destructuring
val (id, email) = friend
assert(id == 133)
assert(email == "alice@example.com")
