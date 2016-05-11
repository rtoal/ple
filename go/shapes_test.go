package main

import (
    "fmt"
    "math"
)

type Shape interface {
    perimeter() float64
    area() float64
}

type Circle struct {
    radius float64
}

func (c Circle) perimeter() float64 {
    return 2.0 * math.Pi * c.radius
}

func (c Circle) area() float64 {
    return math.Pi * c.radius * c.radius
}

type Rectangle struct {
    length, width float64
}

func (r Rectangle) perimeter() float64 {
    return 2.0 * (r.width + r.length)
}

func (r Rectangle) area() float64 {
    return r.width * r.length
}

func showDetails(s Shape) {
    fmt.Printf("%T perimeter=%g area=%g\n", s, s.perimeter(), s.area())
}

func Example() {
    showDetails(Rectangle{5.5, 20.0})
    showDetails(Circle{4})
    // Output: main.Rectangle perimeter=51 area=110
    // main.Circle perimeter=25.132741228718345 area=50.26548245743669
}
