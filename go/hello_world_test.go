package main

import "fmt"

func Example() {
    ch := make(chan string)
    go func() {ch <- "Hello, world"}()
    fmt.Println(<-ch)
    // Output: Hello, world
}
