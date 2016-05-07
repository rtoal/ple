package main

import "fmt"

func multipleReturnValues() (bool, int) {
    return true, 5
}

func namedReturnValues(x int) (a int, b string, c float64) {
    a = 8 * x
    b = "ok"
    return        // note no expressions after `return`
}

func ExampleWithMoreFunctions() {
    p, q := multipleReturnValues()
    r, s, t := namedReturnValues(10)
    fmt.Println(p, q, r, s, t)
    // Output: true 5 80 ok 0
}
