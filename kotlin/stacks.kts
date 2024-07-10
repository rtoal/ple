class IntStack {
    private data class Node(val value: Int, val next: Node?)
    private var top: Node? = null
    private var count = 0
    fun push(item: Int) { top = Node(item, top); count++ }
    fun pop() { top = top?.next; count-- }
    fun peek(): Int? = top?.value
    fun size(): Int = count
}

val s = IntStack()
s.push(100)
assert(s.size() == 1)
assert(s.peek() == 100)
s.pop()
assert(s.peek() == null)
