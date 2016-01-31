package main

import "fmt"

func main() {
	var a uint8 = 34
	var b int64 = -9377888
	var c rune = '\u03c0'
	var d string
	var e bool
	var f complex128 = 2.5-3i

	actual := fmt.Sprintf("%#v %#v %#v %#v %#v %#v", a,b,c,d,e,f)
	expected := "0x22 -9377888 960 \"\" false (2.5-3i)"
	if actual != expected {panic("")}
}
