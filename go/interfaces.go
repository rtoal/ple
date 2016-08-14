package main

type Runner interface {
    run()
}

type Finder interface {
    find(pattern string, source string) (int, bool)
}

type Locker interface {
    Lock() string
    Unlock(string)
}

type Shaper interface {
    area() float64
    perimeter() float64
}

func main() {

}
