package main

import "fmt"

func ExampleMapsWithNil() {
    var m1 map[string]int         // nil, immutable
    m2 := map[string]int{}        // A mutable empty map

    fmt.Print(m1==nil, m2==nil, len(m1), len(m2))

    defer func() {
        if recovery := recover(); recovery != nil {
            fmt.Println(" fail")
        }
    }()
    m2["A"] = 1                   // acceptable
    fmt.Print(" ok")
    m1["A"] = 1                   // panics

    // Output: true false 0 0 ok fail
}
