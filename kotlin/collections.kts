val berries = listOf("blueberry", "balckberry", "strawberry")
val team = mutableListOf<String>()
team.add("Ashleigh")
val smallPrimes = mutableSetOf(2, 3, 5, 7, 11)
var capitals = mapOf(
    "Senegal" to "Dakar",
    "Vietnam" to "Hanoi",
    "France" to "Paris")

assert(berries.size == 3)
assert(berries[0] == "blueberry")
assert(team == listOf("Ashleigh"))
assert(3 in smallPrimes)
assert(capitals["France"] == "Paris")
