package main

import (
    "time"
    "log"
    "math/rand"
)

func report(name string, message string) {
    log.Println(name + " " + message)
}

func do(name string, message string, maxDelay time.Duration) {
    report(name, message)
    delay := int(maxDelay) / 2 + rand.Intn(int(maxDelay) / 2)
    time.Sleep(time.Duration(delay))
}
