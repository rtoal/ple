val (x, y) = Pair(8, 9)
var secret = "999"
var keys = listOf(21, 8, 55)
val latitude = 34.0

// If expression
val hemisphere = if (latitude > 0) {"North"} else {"South"}

// When expression with an argument
val message = when (x) {
    0, 1 -> "Zero or one"
    secret.toInt() -> "You found it"
    in keys -> "A key"
    !in 3 until 12 -> "3 through 11"
    else -> "Unexpected"
}

// When expression with no argument
val comparison = when {
    x > y -> "Greater"
    x < y -> "Less"
    else -> "Equal"    
}

assert(hemisphere == "North")
assert(message == "A key")
assert(comparison == "Less")
