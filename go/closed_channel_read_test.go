package main

import "fmt"

func Example() {
    ch := make(chan int)
    go func() {
        ch <- 100
        close(ch)
    }()
    value, ok := <- ch
    fmt.Println(value, ok)  // This will get something
    value, ok = <- ch
    fmt.Println(value, ok)  // This won't, but it won't block!
    // Output: 100 true
    // 0 false
}
