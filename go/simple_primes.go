package main

import (
	"fmt"
	"sync"
)

func main() {
	max := 1000
	var wg sync.WaitGroup
	for n := 2; n <= max; n++ {
		wg.Add(1)
		go func(n int) {
			defer wg.Done()
			if isPrime(n) {
				fmt.Printf("%d ", n)
			}
		}(n)
	}
	wg.Wait()
}

func isPrime(n int) bool {
	if n == 2 || n == 3 {
		return true
	}
	if n <= 1 || n%2 == 0 || n%3 == 0 {
		return false
	}
	for i := 5; i*i <= n; i += 6 {
		if n%i == 0 || n%(i+2) == 0 {
			return false
		}
	}
	return true
}
