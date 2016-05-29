
struct NextSquare {
    curr: u64,
}

impl Iterator for NextSquare {
    type Item = u64;
    fn next(&mut self) -> Option<u64> {
        let square = Some(self.curr * self.curr );
        self.curr += 1;
        square
    }
}

fn next_square() -> NextSquare {
    NextSquare { curr: 0 }
}

fn main() {
    for i in next_square().take(4) {
        println!("{}", i); // prints 0, 1, 4, 9
    }
}
