[
    Simulates an AND operator given their inputs.
    INPUTS: [0 or 1] [0 or 1]

    Notes:
        - c0 and c1 are inputs
        - c2 is the results
]

,                       Store first boolean to c0
----- -----             Convert c0 from ASCII to boolean
----- -----
----- -----
----- -----
----- ---

>,,                     Store second boolean to c1
----- -----             Convert c1 from ASCII to boolean
----- -----
----- -----
----- -----
----- ---

<                       Go to c0
[                       If c0 is 1 then run
    >                   Go to c1
    [                   If c1 is 1 then run
        > +             Go to c2 and increment by 1
        < -             Go to c1 and decrement by 1
    ]
    < -                 Go to c0 and decrement by 1
]              

TESTING:
>>                      Go to c2
+++++ +++++             Convert c2 from boolean to ASCII
+++++ +++++
+++++ +++++
+++++ +++++
+++++ +++
.                       Print c2

