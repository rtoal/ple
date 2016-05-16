package main

import "fmt"

type Counts map[string]int

func ExampleMaps() {
    m := Counts{"A": 2, "B": 3, "C": 10, "D": 5}

    m["E"] = 8             // add key-value pair
    delete(m, "D")         // remove key-value pair

    b, hasB := m["B"]      // returns value, wasPresentFlag
    z, hasZ := m["Z"]

    fmt.Println(m["A"], len(m), b, hasB, z, hasZ)
    // Output: 2 4 3 true 0 false
}
