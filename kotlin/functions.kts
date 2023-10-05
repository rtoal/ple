// Default arguments
fun log(message: String, level: String = "INFO"): String {
    return "[$level] $message"
}

// Positional and named arguments
assert(log("Starting") == "[INFO] Starting")
assert(log(message = "Starting") == "[INFO] Starting")
assert(log("Out of memory", level = "ERR") == "[ERR] Out of memory")
assert(log(level = "DEBUG", message = "Here") == "[DEBUG] Here")

// Single Expression Function
fun square(x: Int) = x * x
assert(square(5) == 25)

// Varargs
fun weightedSum(vararg numbers: Int, multiplier: Int): Int {
    return numbers.sum() * multiplier
}
assert(weightedSum(1, 2, 3, multiplier = 10) == 60)
val smallPrimes = intArrayOf(2, 3, 5, 7, 11)
assert(weightedSum(*smallPrimes, multiplier = -2) == -56)
