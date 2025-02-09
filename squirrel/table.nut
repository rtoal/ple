local empty = {}
local student =
{
    id = "1J93DZ"
    age = 4
    name = "Jason"
}

local shelf = {}
shelf.book1 <- "C# Manual Book"
shelf.book2 <- "Scala Manual Book"
shelf.book3 <- "Go Manual Book"
assert(shelf.book1 == "C# Manual Book")
assert(shelf["book2"] == "Scala Manual Book")
delete shelf.book3
assert(!("book3" in shelf))
assert(delete shelf.book1 == "C# Manual Book")

