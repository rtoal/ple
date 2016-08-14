package main

import (
    "fmt"
    "runtime"
)

func main() {
    fmt.Printf("NumCPU=%d\n", runtime.NumCPU())
    fmt.Printf("GOMAXPROCS=%d\n", runtime.GOMAXPROCS(0))
}
