func p(_ x: Int, _ y: Int, _ f: (Int, Int, Int) -> Int) -> () {
    print(f(x * x, y * y, 1))
}

// Using 'in', with various degrees of type inference
p(4, 5, {(x:Int, y:Int, z:Int) -> Int in x + y + z})
p(4, 5, {(x:Int, y:Int, z:Int) in x + y + z})
p(4, 5, {(x, y, z) in x + y + z})

// Short argument syntax
p(4, 5, {$0 + $1 + $2})

// Clousure after parenthesized arguments
p(4, 5) {$0 + $1 + $2}
