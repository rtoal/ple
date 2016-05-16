package main

import (
	"fmt"
	"reflect"
)

func Example() {
	var s reflect.Type = reflect.TypeOf("")
	b := reflect.TypeOf(true)
	m := reflect.TypeOf(map[string]bool{"a": true, "b": false})
	fmt.Println(m == reflect.MapOf(s, b))
	// Output: true
}
