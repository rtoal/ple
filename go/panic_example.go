package main

import "fmt"

func g() {
    defer fmt.Println("Cleaning up g")
    panic("Oh no")
    fmt.Println("This message will not be displayed")
}

func f () {
    defer fmt.Println("Cleaning up f")
    g()
    fmt.Println("This message will not be displayed")
}

func main() {
    defer fmt.Println("Cleaning up main")
    f()
    fmt.Println("This message will not be displayed")
}
