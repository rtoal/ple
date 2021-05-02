package main

import (
	"fmt"
	"os"
	"strings"
)

func printPermutations(a []string, n int) {
	if n <= 0 {
		fmt.Println(strings.Join(a, "\t"))
	} else {
		for i := 0; i < n; i++ {
			printPermutations(a, n-1)
			if n % 2 == 0 {
				a[0], a[n] = a[n], a[0]
			} else {
				a[i], a[n] = a[n], a[i]
			}
		}
		printPermutations(a, n-1)
	}
}

func main() {
	args := os.Args[1:]
	printPermutations(args, len(args)-1)
}
