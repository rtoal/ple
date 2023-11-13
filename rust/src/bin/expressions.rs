fn main() {
    // Value of block expression is the last expression
    let eight = {
        let x = 3;
        x + 5                     // No final semicolon, returns 9
    };
    let unit = {
        let x = 3;
        x + 5;                    // Final semicolon, returns ()
    };
    assert_eq!(eight, 8);
    assert_eq!(unit, ());

    // A plain loop expression produces ! if it runs forever,
    // or the value of the break expression if it breaks out
    let mut count = 0;
    let loop_result = loop {
        count += 1;
        if count == 10 {
            break count * 2;
        }
    };
    assert_eq!(loop_result, 20);

    // While (and for) expressions produce ()
    let mut count = 1;
    let while_result = while count < 10 { count += 1 };
    assert_eq!(while_result, ());

    // Match expressions are straightforward
    let match_result = match count {
        0 | 1 => "binary-ish",
        2 => "couple",
        3..=8 => "a few",
        _ => "lots"
    };
    assert_eq!(match_result, "lots");
}
