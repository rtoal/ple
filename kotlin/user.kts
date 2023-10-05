open class User(name: String) {
  open val minPasswordLength = 12
}

class Admin(name: String): User(name) {
    override val minPasswordLength = 18
}
