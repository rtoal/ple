sealed class IntStack {
    abstract fun push(value: Int): IntStack
    abstract fun pop(): IntStack
    abstract fun peek(): Int?
    abstract fun size(): Int

    object Empty : IntStack() {
        override fun push(value: Int): IntStack = NonEmpty(value, this)
        override fun pop(): IntStack = this
        override fun peek(): Int? = null
        override fun size(): Int = 0
    }

    data class NonEmpty(val top: Int, val rest: IntStack) : IntStack() {
        override fun push(value: Int): IntStack = NonEmpty(value, this)
        override fun pop(): IntStack = rest
        override fun peek(): Int? = top
        override fun size(): Int = 1 + rest.size()
    }
}

val stack: IntStack = IntStack.Empty
val stack1 = stack.push(10)
val stack2 = stack1.push(20)
val stack3 = stack2.push(30)

println("Peek: ${stack3.peek()}") // Output: Peek: 30
println("Size: ${stack3.size()}") // Output: Size: 3

val stack4 = stack3.pop()
println("Peek after pop: ${stack4.peek()}") // Output: Peek after pop: 20
println("Size after pop: ${stack4.size()}") // Output: Size after pop: 2
