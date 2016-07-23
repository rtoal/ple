indirect enum Tree<T> {
    case empty
    case node(Tree, T, Tree)

    var size: Int {
        switch self {
            case .empty: return 0
            case .node(let left, _, let right):
                return left.size + 1 + right.size
        }
    }
}

let t: Tree<Int> = .node(.node(.empty, 3, .empty), 7, .empty)
assert(t.size == 2)
