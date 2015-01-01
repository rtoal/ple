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


type Horse struct {
    Animal
}

func (h Horse) sound() string {
    return "neigh"
}

type Cow struct {
    Animal
}

func (c Cow) sound() string {
    return "moooo"
}

type Sheep struct {
    Animal
}

func (s Sheep) sound() string {
    return "baaaa"
}

func main() {
    h := Animal{Horse{}, "CJ"}
    fmt.Println(speak(h))
    c := Animal{Cow{}, "Bessie"}
    fmt.Println(speak(c))
    fmt.Println(speak(Animal{Sheep{}, "Little Lamb"}))
}
