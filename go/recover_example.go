package main

import "fmt"

func g() {
    defer fmt.Println("Cleaning up g")
    panic("Oh no")
    fmt.Println("This message will not be displayed")
}

func f () {
    // recover() should be used rarely, if at all, in practice.
    defer func() {
        fmt.Println("Cleaning up f")
        r := recover();
        fmt.Printf("Recovered the panic value %#v\n", r)
    }()
    g()
    fmt.Println("This message will not be displayed")
}

func main() {
    defer fmt.Println("Cleaning up main")
    f()
    fmt.Println("f completed normally")
}
