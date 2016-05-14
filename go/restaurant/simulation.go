package main

import (
    "fmt"
    "sync"
)

const numberOfCooks, numberOfCustomers = 3, 15

func main() {
    var waitGroup sync.WaitGroup
    for i := 0; i < numberOfCustomers; i++ {
        waitGroup.Add(1)
        go Customer(fmt.Sprintf("customer-%v", i), &waitGroup)
    }
    for i := 0; i < numberOfCooks; i++ {
        go Cook(fmt.Sprintf("cook-%v", i))
    }
    waitGroup.Wait()
}
