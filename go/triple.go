package main

import "fmt"

func main() {
    for c := 1; c <= 40; c++ {
        for b := 1; b < c; b++ {
            for a := 1; a < b; a++ {
                if a * a + b * b == c * c {
                    fmt.Printf("%d, %d, %d\n", a, b, c)
                }
            }
        }
    }
}
