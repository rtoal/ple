Object subclass: Animal [
    | name |
    Animal class >> named: aString [^self new name: aString]
    name: aString [name := aString]
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

h := Horse named: 'CJ'.
h speak displayNl.
c := Cow named: 'Bessie'.
c speak displayNl.
(Sheep named: 'Little Lamb') speak displayNl.
