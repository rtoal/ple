package main

import "fmt"

func sum(a []int, ch chan<- int) {
    result := 0
    for _, value := range a {
        result += value
    }
    ch <- result
}

func Example() {
    var numbers [100000]int
    for i := range numbers {
        numbers[i] = i
    }
    ch := make(chan int, 2)
    go sum(numbers[:len(numbers)/2], ch)
    go sum(numbers[len(numbers)/2:], ch)
    fmt.Println(<-ch + <-ch)
    // Output: 4999950000
}
