package main

import "fmt"

func useless(a [5]int, b struct{x, y int}) {
    a[0] = 10
    b.x = 5
}

func ExampleCopies() {
    z := [5]int{0, 0, 0, 0, 0}
    p := struct{x, y int}{1, 2}
    useless(z, p)
    fmt.Println(z, p)
    // Output: [0 0 0 0 0] {1 2}
}
