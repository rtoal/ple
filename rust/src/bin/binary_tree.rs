enum Tree<T> {
    Empty,
    Node(Box<Tree<T>>, T, Box<Tree<T>>),
}

use Tree::{Empty, Node};

impl<T> Tree<T> {
    fn size(&self) -> usize {
        match self {
            Empty => 0,
            Node(left, _, right) => left.size() + 1 + right.size(),
        }
    }
}

fn main() {
    let t: Tree<i32> = Node(
        Box::new(Node(Box::new(Empty), 3, Box::new(Empty))),
        7,
        Box::new(Empty),
    );
    assert_eq!(t.size(), 2);
}
