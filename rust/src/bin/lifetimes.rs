fn f1(a: Vec<i32>) -> Vec<i32> {
    // lifetimes don't apply because no references
    a
}

fn f2(a: &Vec<i32>) -> Vec<i32> {
    // lifetimes don't apply because no reference output
    a.clone()
}

fn main() {
    f1(vec![1,2,3]);
    f2(&vec![1,2,3]);
}
