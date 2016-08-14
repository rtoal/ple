enum Suit: String {
    case spades, hearts, diamonds, clubs
}

enum Direction: Int {
    case north = 0, east = 90, south = 180, west = 270
}

assert(Suit.hearts.rawValue == "hearts")
assert(Direction.south.rawValue == 180)
assert(Direction.west == Direction(rawValue: 270))
