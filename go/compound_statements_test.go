package main

import "fmt"

func Example() {
	capitals := map[string]string{
		"Netherlands":  "Amsterdam",
		"Aruba":        "Oranjestad",
		"Curaçao":      "Willemstad",
		"Sint Maarten": "Philipsburg",
	}
	for _, country := range [2]string{"Aruba", "Wales"} {
		if capital, known := capitals[country]; known {
			fmt.Printf("The capital of %s is %s\n", country, capital)
		} else {
			fmt.Printf("I don't know the capital of %s\n", country)
		}
	}
	// Output:
	// The capital of Aruba is Oranjestad
	// I don't know the capital of Wales
}
