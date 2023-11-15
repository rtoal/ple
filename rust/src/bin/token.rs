enum Token {
    Plus,
    Minus,
    Number(f64),
    Identifier(String),
}

impl Token {
    fn lexeme(&self) -> String {
        match self {
            Token::Plus => String::from("+"),
            Token::Minus => String::from("-"),
            Token::Number(value) => value.to_string(),
            Token::Identifier(name) => name.clone(),
        }
    }
}

fn main() {
    let expression: Vec<Token> = vec![
        Token::Number(3.0),
        Token::Plus,
        Token::Identifier("x".to_string()),
    ];
    let text = expression.iter()
        .map(|t| t.lexeme())
        .collect::<Vec<String>>()
        .join(" ");
    assert_eq!(text, "3 + x");
}
