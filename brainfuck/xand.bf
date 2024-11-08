[
    Simulates an XOR operator given their inputs.
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
[>>+<[>-<-]<-]>[>+<-]<  XOR operator where xor(c0 c1): c2
>>                      Go to c2
[-<+>]                  Move c2 to c1                 
<                       Go to c1      
[>-<-]>+<               NOT operator where not(c1): c2


TESTING:
>                       Go to c2
+++++ +++++             Convert c2 from boolean to ASCII
+++++ +++++
+++++ +++++
+++++ +++++
+++++ +++
.                       Print c2