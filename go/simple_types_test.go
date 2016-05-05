package main

import "fmt"

func ExampleSimpleTypes() {
	var a uint8 = 34
	var b int64 = -9377888
	var c rune = '\u03c0'
	var d string
	var e bool
	var f complex128 = 2.5-3i

	fmt.Printf("%#v %#v %#v %#v %#v %#v\n", a,b,c,d,e,f)
	// Output: 0x22 -9377888 960 "" false (2.5-3i)
}
