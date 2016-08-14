// Adapted from user Karrot Kake on StackOverflow
// http://stackoverflow.com/a/37198216
package main

import (
	"fmt"
	"sync"
)

func main() {
	primes := make(chan int)
	var wgPrint, wgTest sync.WaitGroup

	wgPrint.Add(1)
	go func(wg *sync.WaitGroup) {
		defer wg.Done()
		for prime := range primes {
			fmt.Print(" ", prime)
		}
	}(&wgPrint)

	for candidate := 2; candidate < 1000; candidate++ {
		wgTest.Add(1)
		go keepIfPrime(&wgTest, candidate, primes)
	}

	wgTest.Wait()
	close(primes)
	wgPrint.Wait()
	fmt.Println()
}

func keepIfPrime(wg *sync.WaitGroup, candidate int, primes chan int) {
	defer wg.Done()
	for divisor := 2; divisor*divisor <= candidate; divisor++ {
		if candidate % divisor == 0 {
			return
		}
	}
	primes <- candidate
}
