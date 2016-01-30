package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Println("Exactly one argument is required")
		os.Exit(1)
	}
	word := os.Args[1]
	generatePermutations(strings.Split(word, ""), len(word)-1)
}

func generatePermutations(a []string, n int) {
	if n == 0 {
		fmt.Println(strings.Join(a, ""))
	} else {
		for i := 0; i < n; i++ {
			generatePermutations(a, n-1)
			if n % 2 == 0 {
				a[0], a[n] = a[n], a[0]
			} else {
				a[i], a[n] = a[n], a[i]
			}
		}
		generatePermutations(a, n-1)
	}
}
