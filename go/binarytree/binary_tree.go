package binarytree

import "fmt"

type Tree struct {
    Value int
    Left, Right *Tree
}

func (tree *Tree) Size() (count int) {
    if tree == nil {
        return 0
    }
    return 1 + tree.Left.Size() + tree.Right.Size()
}

func (tree *Tree) String() string {
    if tree == nil {
        return "()"
    }
    return fmt.Sprintf("(%s%d%s)", tree.Left, tree.Value, tree.Right)
}
