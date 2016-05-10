package binarytree

import "fmt"

func ExampleTree() {
    s := &Tree{7, &Tree{Value:2}, &Tree{8, &Tree{Value:1}, nil}}
    fmt.Println(s)
    fmt.Println(s.Size())
    // Output: ((()2())7((()1())8()))
    // 4
}
