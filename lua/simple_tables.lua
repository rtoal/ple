colors = { "red", "green", "blue" }              -- numbered only
circle = { x = 0, y = 0, radius = 10 }           -- named only
choices = { "kim", "sam", "maria", correct = 3 } -- mixed

assert(colors[2] == "green")
assert(circle["radius"] == 10)
assert(circle.radius == 10)    -- dot notation is convenient
assert(choices[1] == "kim")
assert(choices.correct == 3)
assert(choices[choices.correct] == "maria")