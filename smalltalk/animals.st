Object subclass: Animal [
    | name |
    Animal class >> new: n [^super new init: n]
    init: n [name := n]
    speak [^name, ' says ', self sound]
]

Animal subclass: Horse [
    sound [^'neigh']
]

Animal subclass: Sheep [
    sound [^'baaaa']
]

Animal subclass: Cow [
    sound [^'moooo']
]

h := Horse new: 'CJ'.
h speak displayNl.
c := Cow new: 'Bessie'.
c speak displayNl.
(Sheep new: 'Little Lamb') speak displayNl.
