package main

import "fmt"

func g() {
	defer fmt.Println("Cleaning up g")
	panic("Oh no")
	fmt.Println("This message will not be displayed")
}

func f () {
	defer func() {
		fmt.Println("Cleaning up f")
		if r := recover(); r != nil {
			fmt.Println("Recovered the panic value", r)
		}
	}()
	g()
	fmt.Println("This message will not be displayed")
}

func Example() {
	defer fmt.Println("Cleaning up main")
	f()
	fmt.Println("f completed normally")
	// Output: Cleaning up g
	// Cleaning up f
	// Recovered the panic value Oh no
	// f completed normally
	// Cleaning up main
}
