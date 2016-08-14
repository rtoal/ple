package main

import (
    "fmt"
    "encoding/json"
)

type Person struct {
    Id int `json:"id"`
    FirstName string `json:"first_name"`
    LastName string `json:"last_name"`
}

func Example() {
    if p, err := json.Marshal(Person{8, "Bea", "Bee"}); err == nil {
        fmt.Println(string(p))
    }
    // Output: {"id":8,"first_name":"Bea","last_name":"Bee"}
}
