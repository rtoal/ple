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
s.push(1)
s.push(2)
s.push(3)
assert(s.size() == 3)
assert(s.peek() == 3)
s.pop()
assert(s.size() == 2)
assert(s.peek() == 2)
s.pop()
assert(s.size() == 1)
assert(s.peek() == 1)
s.pop()
assert(s.size() == 0)
assert(s.peek() == null)

