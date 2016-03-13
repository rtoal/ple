indirect enum Tree<T> {
    case Empty
    case Node(Tree, T, Tree)

    var size: Int {
        switch self {
            case .Empty: return 0
            case .Node(let left, _, let right):
                return left.size + 1 + right.size
        }
    }
}

let t: Tree<Int> = .Node(.Node(.Empty, 3, .Empty), 7, .Empty)
assert(t.size == 2)
