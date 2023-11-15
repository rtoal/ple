use std::num::ParseIntError;

fn add(s: &str, t: &str) -> Result<i32, ParseIntError> {
    let x = s.parse::<i32>()?;
    let y = t.parse::<i32>()?;
    Ok(x + y)
}

fn main() {
    assert_eq!(add("1", "2"), Ok(3));
    assert!(add("1", "abc").is_err());
}
