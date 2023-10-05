sealed class Tree<T> {
    class Empty<T> : Tree<T>()
    class Node<T>(
        val left: Tree<T>, val value: T, val right: Tree<T>
    ) : Tree<T>()

    fun size(): Int = when (this) {
        is Empty -> 0
        is Node -> left.size() + 1 + right.size()
    }
}

assert(Tree.Empty<Int>().size() == 0)

val t: Tree<Int> = Tree.Node(
    Tree.Node(Tree.Empty(), 3, Tree.Empty()),
    5,
    Tree.Node(Tree.Empty(), 8, Tree.Empty()))
assert(t.size() == 3)
