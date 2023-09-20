package binarytree

import (
    "fmt"
    "golang.org/x/exp/constraints"
)

type Tree[T constraints.Ordered] struct {
    Value T
    Left, Right *Tree[T]
}

func (tree *Tree[T]) Size() (count int) {
    if tree == nil {
        return 0
    }
    return 1 + tree.Left.Size() + tree.Right.Size()
}

func (tree *Tree[T]) String() string {
    if tree == nil {
        return "()"
    }
    return fmt.Sprintf("(%s%v%s)", tree.Left, tree.Value, tree.Right)
}
