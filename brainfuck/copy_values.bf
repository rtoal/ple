[
    Simulates copying or duplicating values.
    INPUTS: [character]

    Notes:
    - c0 are inputs
    - c0, c1, and c2 are memory
    - c4 is temporary memory
]

,               Gets input character and stores it in c0
[->+>+>+<<<]    Decrement c0 and Increment c1 c2 and c3
>>>             Go to c4
[-<<<+>>>]      Move c4 to c0


TESTS
<<<             Go to c0
.>.>.           Prints c0, c1, and c2