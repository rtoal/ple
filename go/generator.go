// This app is taken from a presentation by Rob Pike at
// Google I/O 2012.
package main

import (
    "fmt"
    "math/rand"
    "time"
)

func main() {
    c := repeater("hello")
    for i := 0; i < 10; i++ {
        fmt.Printf("You say %q\n", <-c)
    }
    fmt.Println("All done")
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
            time.Sleep(time.Duration(rand.Intn(1000)) * time.Millisecond)
        }
    }()
    return c
}