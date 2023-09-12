// COPILOT WROTE THIS
when (x) {
    1 -> println("One")
    2 -> println("Two")
    else -> println("Other")
}

// 2. When with multiple branches
when (x) {
    0, 1 -> println("x == 0 or x == 1")
    else -> println("otherwise")
}

// 3. When with arbitrary expressions
when (x) {
    parseInt(s) -> println("s encodes x")
    else -> println("s does not encode x")
}

// 4. When without an argument
when {
    x.isOdd() -> println("x is odd")
    x.isEven() -> println("x is even")
    else -> println("x is funny")
}

// 5. When with ranges
when (x) {
    in 1..10 -> println("x is in the range")
    in validNumbers -> println("x is valid")
    !in 10..20 -> println("x is outside the range")
    else -> println("none of the above")
}

// 6. When with collections
when (x) {
    in 1..10 -> println("x is in the range")
    in validNumbers -> println("x is valid")
    !in 10..20 -> println("x is outside the range")
    else -> println("none of the above")
}

// 7. Using when to return a value
fun transform(color: String): Int {
    return when (color) {
        "Red" -> 0
        "Green" -> 1
        "Blue" -> 2
        else -> throw IllegalArgumentException("Invalid color param value")
    }
}

// 8. Using when to check a value is in a collection
fun main(args: Array<String>) {
    val items = setOf("apple", "banana", "kiwi")
    when {
        "orange" in items -> println("juicy")
        "apple" in items -> println("apple is fine too")
    }
}
