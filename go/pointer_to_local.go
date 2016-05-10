package main

import "fmt"

// If you only know C, this might seem strange
func f(y int) *int {
    // Perfectly, wonderfully, legal in Go
    a := y
    return &a
}

func main() {
    for i := 1; i < 100; i++ {
        fmt.Println(*f(i))
    }
}
