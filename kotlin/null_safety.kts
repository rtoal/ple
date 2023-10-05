val supervisor: String? = null

val name: String? = null
val message = "Hello, ${name ?: "World"}!"

val user: User? = getUserById(id)
val name = user?.name

fun updateUser(@NotNull user: User) {
    // update the user
}

val user: User? = getUserById(id)
if (user != null) {
    updateUser(user)
}

