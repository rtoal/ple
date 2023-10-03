fun unless(condition: Boolean, action: () -> Unit) {
  if (!condition) {
    action()
  }
}

unless (1 == 2) {
  println("1 is not equal to 2")
}
