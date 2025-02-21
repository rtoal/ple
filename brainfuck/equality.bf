[
    Simulates an equality operator given their inputs.
    INPUTS: [0 to 255] [0 to 255] 

    Notes:
        - c0 and c1 are inputs
        - c2 and c3 and memory
        - c4 is the results
]

,                           Gets the first character and set it to c0
----- -----                 Subtract 32 from c0 for Loop Padding
----- -----
----- -----
--
[                           Loop: Starts converting string input to positive integer
    +++++ +++++             Add 32 back to c0 from Loop Padding
    +++++ +++++
    +++++ +++++
    ++
    ----- -----             Subtract 48 from c0 (ASCII to Int)
    ----- -----
    ----- -----
    ----- -----
    ----- ---
    [->+<]                  Move c0 to c1 additively
    >                       Go to c1
    [                       
        [->++++++++++<]     Move c1 to c2 and multiply c2 by 10
        >                   Go to c2
        [-<+>]              Move c2 back into c1
        <<                  Go to c0
    ]
    ,                       Get the next character from input and set it to c0      
    ----- -----             Subtract 32 from c0 to check if the next character is a space
    ----- -----
    ----- -----
    --
]                           Loop ends if c0 is a space
>                           Go to c1
[---------->+<]             Move c1 to c2 and divide c2 by 10
<                           Go to c0      

,                           Gets the first character from the second number and set it to c0
[                           Loop: Starts converting string input to positive integer
    ----- -----             Subtract 48 from c0 (ASCII to Int)
    ----- -----
    ----- -----
    ----- -----
    ----- ---
    [->+<]                  Move c0 to c1 additively
    >                       Go to c1
    [                       
        [->>++++++++++<<]   Move c1 to c3 and multiply c3 by 10
        >>                  Go to c3
        [-<<+>>]            Move c3 back into c1
        <<<                 Go to c0
    ]
    ,                       Get the next character from input and set it to c0      
]                           Loop ends if c0 null
>                           Go to c1
[---------->>+<<]           Move c1 to c3 and divide c3 by 10

>                           Go to c2
[->-<]                      Decrement c2 and c3
>                           Go to c3
[>-<<]                      If c3 is not 0 then subtract 1 from c4
>>+                         Add 1 to c4

+++++ +++++                 Convert c4 from int to ASCII
+++++ +++++
+++++ +++++
+++++ +++++
+++++ +++
.                           Print c4

