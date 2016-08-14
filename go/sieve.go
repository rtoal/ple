// Adapted from Rob Pike's presentation
package main

import "fmt"

func generate(first chan<- int) {
    for i := 2; ; i++ {
        first <- i
    }
}

func filter(in <-chan int, out chan<- int, prime int) {
    for {
        candidate := <-in
        if candidate % prime != 0 {
            out <- candidate
        }
    }
}

func main() {
    ch := make(chan int)
    go generate(ch)
    for i := 0; i < 1000; i++ {
        prime := <-ch
        fmt.Println(prime)
        nextCh := make(chan int)
        go filter(ch, nextCh, prime)
        ch = nextCh
    }
}
