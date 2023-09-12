fun printMessage(message: String, prefix: String = "INFO", suffix: String = "") {
    println("[$prefix] $message$suffix")
}
printMessage("Hello", suffix = "!!!")

fun createUser(id: Int, name: String = "", email: String = "") {
    // create a new user
}
createUser(id = 123)
createUser(id = 456, name = "Jane")
createUser(id = 789, email = "joe@example.com")

fun processList(list: List<String>) {
    fun isValid(str: String) = str.length > 0
    
    val filteredList = list.filter { isValid(it) }
    // process the filtered list
}

