fn main() {
    // Will not compile: "cannot borrow `a` as immutable because
    // it is also borrowed as mutable" (at the declaration of c)
    // let mut a = 5;
    // let b = &mut a;
    // let c = &a;
    // println!("{a} {b} {c}");
}
