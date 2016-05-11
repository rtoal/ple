package main

import "fmt"

func Example() {
	a := [5]int{0, 10, 20, 30, 40}
	s := a[1:3]                         // overlaid on a
	fmt.Println(s, len(s), cap(s))
	s = append(s, 700, 900)             // append (still in a)
	fmt.Println(s, len(s), cap(s))
	s = append(s, 5, 5, 5)              // append, overflows
	fmt.Println(s, len(s), cap(s) > 5)  // note capacity grown
	t := make([]int, 10)                // new 10-element slice
	copy(t, s)                          // copy elements to new location
	fmt.Println(t)                      // note the copy
	// Output: [10 20] 2 4
	// [10 20 700 900] 4 4
	// [10 20 700 900 5 5 5] 7 true
	// [10 20 700 900 5 5 5 0 0 0]
}
