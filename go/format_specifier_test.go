package main

import "fmt"

func Example() {
    var c uint8 = 0x22
    values := []interface{}{c, [3]int{1,2,3}, "hello", '$', 10}
    for _, x := range values {
        fmt.Printf("%#v has type %T\n", x, x)
    }
    // Output:
    // 0x22 has type uint8
    // [3]int{1, 2, 3} has type [3]int
    // "hello" has type string
    // 36 has type int32
    // 10 has type int
}
