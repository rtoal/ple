package main

import "fmt"

type Node struct {
    value int
    left, right *Node
}

func (node *Node) size () (count int) {
    count = 1
    if node.left != nil {
        count += node.left.size()
    }
    if node.right != nil {
        count += node.right.size()
    }
    return
}

func ExampleTree() {
    s := &Node{7, &Node{value:2}, &Node{8, nil, nil}}
    fmt.Println(s.size())
    // Output: 3
}
