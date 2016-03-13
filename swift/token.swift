enum Token {
    case Plus
    case Minus
    case Number(Double)
    case Identifier(String)

    func lexeme() -> String {
        switch self {
            case .Plus: return "+"
            case .Minus: return "-"
            case .Number(let value): return String(value)
            case .Identifier(let name): return name
        }
    }
}

let expression: [Token] = [.Number(4.0), .Plus, .Identifier("x")]
let text = expression.map{$0.lexeme()}.joinWithSeparator(" ")
assert(text == "4.0 + x")
