// This app is taken from a presentation by Rob Pike at
// Google I/O 2012.
package main

import (
    "fmt"
    "math/rand"
    "time"
)

func main() {
    c := fanIn(repeater("hello"), repeater("hola"))
    for i := 0; i < 20; i++ {
        fmt.Printf("You say %q\n", <-c)
    }
    fmt.Println("All done")
}

// Returns a channel that multiplexes, or fans in,
// two other channels
func fanIn(in1, in2 <-chan string) <-chan string {
    c := make(chan string)
    go func() {for {c <- <-in1}}()
    go func() {for {c <- <-in2}}()
    return c
}

// This function returns a channel from which the caller will
// receive messages consisting of a string plus a counter.
// The goroutine that sends messages to the channel is written
// to never end, but that's what we want. The whole application
// ends when main() ends, so this "daemon" is fine.
func repeater(msg string) <-chan string {
    c := make(chan string)
    go func() {
        for i := 0; ; i++ {
            c <- fmt.Sprintf("%s %d", msg, i)
            time.Sleep(time.Duration(rand.Intn(100)) * time.Millisecond)
        }
    }()
    return c
}