enum Token {
    case plus
    case minus
    case number(Double)
    case identifier(String)

    func lexeme() -> String {
        switch self {
            case .plus: return "+"
            case .minus: return "-"
            case .number(let value): return String(value)
            case .identifier(let name): return name
        }
    }
}

let expression: [Token] = [.number(4.0), .plus, .identifier("x")]
let text = expression.map{$0.lexeme()}.joined(separator: " ")
assert(text == "4.0 + x")
