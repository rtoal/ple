package main

import (
	"fmt"
	"time"
)

func main() {
    for i := 0; i < 11; i++ {
        var t int64 = int64((43200 * i + 21600) / 11)
        fmt.Println(time.Unix(t, 0).UTC().Format("03:04:05"))
    }
}