enum Suit: String {
    case Spades, Hearts, Diamonds, Clubs
}

enum Direction: Int {
    case North = 0, East = 90, South = 180, West = 270
}

assert(Suit.Hearts.rawValue == "Hearts")
assert(Direction.South.rawValue == 180)
assert(Direction.West == Direction(rawValue: 270))
