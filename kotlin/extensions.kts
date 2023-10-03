fun Int.factorial(): Int {
    return (1..this).fold(1) { acc, i -> acc * i }
}

assert(0.factorial() == 1)
assert(10.factorial() == 3628800)

val String.scalarCount: Int
    get() = this.codePointCount(0, this.length)

assert("".scalarCount == 0)
assert("←\uD83C\uDF53→".scalarCount == 3)

fun <T> MutableList<T>.swap(index1: Int, index2: Int) {
    this[index1] = this[index2].also { this[index2] = this[index1] }
}

val numbers = mutableListOf(34, 8, 21, 5, 1)
numbers.swap(1, 3)
assert(numbers == mutableListOf(34, 5, 21, 8, 1))
