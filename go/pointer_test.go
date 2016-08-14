package main

import "fmt"

func mutateThroughPointer(a *[5]int, b *struct{x, y int}) {
    (*a)[0] = 10
    (*b).x = 5
}

func ExampleMutation() {
    z := [5]int{0, 0, 0, 0, 0}
    p := struct{x, y int}{1, 2}
    mutateThroughPointer(&z, &p)
    fmt.Println(z, p)
    // Output: [10 0 0 0 0] {5 2}
}
