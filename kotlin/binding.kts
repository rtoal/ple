fun display(displayer: () -> Unit) {
  var name = "new"
  displayer()     // what if "name" was free in this function?
}

fun main() {
  var name = "old"
  fun printName() { print(name) }
  display(::printName)
}

main()
