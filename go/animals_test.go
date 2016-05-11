package main

import "fmt"

type Animal struct {
    Sounder
    name string
}

type Sounder interface {
    sound() string
}

func speak(a Animal) string {
    return fmt.Sprintf("%s says %s", a.name, a.sound())
}

type Horse struct {}

func (h Horse) sound() string {
    return "neigh"
}

type Cow struct {}

func (c Cow) sound() string {
    return "moooo"
}

type Sheep struct {}

func (s Sheep) sound() string {
    return "baaaa"
}

func ExampleAnimals() {
    h := Animal{Horse{}, "CJ"}
    fmt.Println(speak(h))
    c := Animal{Cow{}, "Bessie"}
    fmt.Println(speak(c))
    fmt.Println(speak(Animal{Sheep{}, "Little Lamb"}))
    // Output: CJ says neigh
    // Bessie says moooo
    // Little Lamb says baaaa
}
