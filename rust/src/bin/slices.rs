fn main() {
    let a = [10, 20, 30, 40, 50];     // type [i32; 5]
    let a_slice = &a[2..4];           // type &[i32]
    let v = vec![10, 20, 30, 40, 50]; // type Vec<i32>
    let v_slice = &v[2..4];           // type &[i32]
    assert_eq!(a_slice, &[30, 40]);
    assert_eq!(v_slice, &[30, 40]);
}