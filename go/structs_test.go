package main

import "fmt"

type Point struct {
    X, Y float64
    Color string
}

func ExampleStructs() {
    p := Point{8, 5, "green"}
    q := Point{Color: "blue", Y: -2.0}
    var r Point
    s := struct{Name string; Ok bool}{"ABC", true}
    fmt.Println(p, q, r, s, p.Y)
    // Output: {8 5 green} {0 -2 blue} {0 0 } {ABC true} 5
}
