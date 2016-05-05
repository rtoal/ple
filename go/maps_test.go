package main

import "fmt"

type Counts map[string]int

func ExampleMaps() {
    m1 := map[string]int{"A": 2, "B": 3, "C": 10}
    m2 := Counts{"D": 5}

    m2["E"] = 8            // add key-value pair
    delete(m2, "D")        // remove key-value pair

    b, hasB := m1["B"]     // returns value, wasPresentFlag
    z, hasZ := m1["Z"]

    fmt.Println(m1, m2, b, hasB, z, hasZ)
    // Output: map[A:2 B:3 C:10] map[E:8] 3 true 0 false
}
