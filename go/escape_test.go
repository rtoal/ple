package main

import "fmt"

type Point struct{x, y int}

func ExampleEscape() {

	var g *int                    // g means "global(ish)"

	f := func(x int) *Point {
		a := 5                    // stays local
		b := 8
		c := &b
		g = c                     // b escapes!
		return &Point{x, a * 5}   // this escapes too!
	}

	fmt.Print(*f(2))
	fmt.Println(*g)
	// Output: {2 25}8
}
