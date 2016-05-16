package main

import (
    "encoding/base64"
    "fmt"
)

func Example() {
    strings := []string{"SGVsbG8sIHdvcmxk", "Bad&^)#****Chars"}
    for _, s := range strings {
        if bytes, err := base64.StdEncoding.DecodeString(s); err != nil {
            fmt.Println("Oops:", err.Error())
        } else {
            fmt.Println("Decoded:", string(bytes))
        }
    }
    // Output:
    // Decoded: Hello, world
    // Oops: illegal base64 data at input byte 3
}
