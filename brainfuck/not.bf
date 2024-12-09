[
    Simulates a NOT operator given the input.
    INPUTS: [0 or 1]

    Notes:
        - c0 is input
        - c1 is results
]

,                       Store first boolean to c0
----- -----             Convert c0 from ASCII to boolean
----- -----
----- -----
----- -----
----- ---

[>-<-]                  If c0 is 1 then subtract 1 from c1 and c0
> +                     Add 1 to c1
<                       Move to c0 to end the program

TESTING:
>                       Go to c1
+++++ +++++             Convert c1 from boolean to ASCII
+++++ +++++
+++++ +++++
+++++ +++++
+++++ +++
.                       Print c1