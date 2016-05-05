package main

import "fmt"

func ExampleMapsWithNil() {
    var m1 map[string]int         // nil, immutable
    m2 := map[string]int{}        // A mutable empty map

    fmt.Println(m1==nil, m2==nil, len(m1), len(m2))

    defer func() {
        recover();
        fmt.Println("Nil assignment")
    }()
    m1["A"] = 1
    // Output: true false 0 0
    // Nil assignment
}
