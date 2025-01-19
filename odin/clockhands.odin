package main

import "core:fmt"
import "core:math"

main :: proc() {
    for i in 0..=10 {
        t := i64((f64(i) + 0.5) * 43200.0 / 11.0)
        h, m, s := t / 3600, t / 60 % 60, t % 60
        fmt.printf("%02d:%02d:%02d\n", 12 if h == 0 else h, m, s)
    }
}