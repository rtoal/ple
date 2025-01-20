package main

import "fmt"
func main() {
    for i := 0; i < 11; i++ {
        t := (43200 * i + 21600) / 11
        h, m, s := t / 3600, t / 60 % 60, t % 60
        if h == 0 {
            h = 12
        }
        fmt.Printf("%02d:%02d:%02d\n", h, m, s)
    }
}