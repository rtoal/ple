extends SceneTree
## This is a documentation comment that this file is 
## about documentation comments.

signal die ## Inline documentation comment where you can signal if the player died.

## This variable stores the health of the player. 
var health = 45

## This variable below is depracated. Stores item count.
## @depracated: Use 
var items = ["helmet", "sword", "shield"]

## This below is a vector of some kind, maybe you can take
## a look here for more information about Vector2.
## @tutorial: https://docs.godotengine.org/en/stable/classes/class_vector2.html#class-vector2
var vector = Vector2()

## This function below makes the player do a dance move,
## however this feature is experimental.
## @experimental
func do_a_dance(dance="dab"):
    print("Player %s" % dance)

## This documentation tag is super long because Undalevein wrote me
## this was and it is super wordy to the point of nonsensical but I
## guess run-on sentence is overrated like sheesh I know that 
## sometimes sentences can be long but being this long is extremely
## masochistic and just not ideal for an example like this.
## [br]
## Anyways, we just did a line break and now I am going to do
## another line break right now to explain what this function is
## below.
## [br]
## This function only prints "Hello"
func hello():
    print("Hello")