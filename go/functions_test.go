package main

import (
	"math"
	"fmt"
)

func twice(f func(float64)float64, x float64) float64 {
	return f(f(x))
}

func square(x float64) float64 {
	return x * x
}

func ExampleFunctions() {
	addTwo := func(x float64)float64 {return x + 2}
	fmt.Println(twice(square, 4))
	fmt.Println(twice(addTwo, 100))
	fmt.Println(twice(math.Log2, 256))
	// Output: 256
	// 104
	// 3
}
