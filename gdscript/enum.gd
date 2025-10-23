extends SceneTree

enum {CLUB, DIAMOND, SPADE, HEART}
enum Direction {NORTH, EAST, SOUTH, WEST}
enum Text {BOLD, ITALICS, UNDERLINE=-2, STRIKETHROUGH, SUBSCRIPT, SUPERSCRIPT}

func _init():
    var card = DIAMOND
    match card:
        CLUB:
            print("You have a Club")
        DIAMOND:
            print("You have a Diamond")
        SPADE:
            print("You have a Spade")
        HEART:
            print("You have a Heart")
    
    var direction = Direction.WEST
    match direction:
        Direction.NORTH:
            print("Heading North")
        Direction.SOUTH:
            print("Heading South")
        1:
            print("Heading 1")
        3:
            print("Heading 3")
        Direction.EAST:
            print("Heading East")
        Direction.WEST:
            print("Heading West")
    
    assert(Text.BOLD == Text.SUBSCRIPT)
    assert(Text.ITALICS == Text.SUPERSCRIPT)
    assert(SPADE == Direction.SOUTH)
    quit()