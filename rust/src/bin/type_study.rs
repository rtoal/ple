fn assert_type<T>(_: &T, s:&'static str) {
    let type_name = std::any::type_name::<T>();
    assert_eq!(type_name, s);
}

fn main() {
    assert_type(& 1.0, "f64");
    assert_type(& 1.0f32, "f32");
    assert_type(& vec!(17, 100, 4), "alloc::vec::Vec<i32>");
    assert_type(& "Hello", "&str");
    assert_type(& "Hello".to_string(), "alloc::string::String");
    assert_type(& [1, 2, 3], "[i32; 3]");
    for i in 1..5 {
        assert_type(&i, "i32");
    }
}
