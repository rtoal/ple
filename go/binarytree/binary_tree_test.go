package binarytree

import "fmt"

func ExampleTree() {
    s := &Tree[int]{
        7,
        &Tree[int]{Value:2},
        &Tree[int]{8, &Tree[int]{Value:1}, nil},
    }
    fmt.Println(s)
    fmt.Println(s.Size())
    // Output: ((()2())7((()1())8()))
    // 4
}
