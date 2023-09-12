fun Int.factorial(): Int {
    return if (this == 0) 1 else this * (this - 1).factorial()
}
val factorialOfFive = 5.factorial()

fun Date.toFormatString(format: String): String {
    val formatter = SimpleDateFormat(format, Locale.getDefault())
    return formatter.format(this)
}

val date = Date()
val formattedDate = date.toFormatString("dd/MM/yyyy")

val String.lastChar: Char
    get() = this[length - 1]
   
val lastChar = "Hello".lastChar
