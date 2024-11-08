[
    Converts a string of digits to an integer number and store it to c2. 
    If the first character is negative, then store the negative number 
    of that input.

    Things to note:
        - c0 is the accumulator
        - c1 to c2 is the memory
        - Final nummber is stored in c2
]

,                               Gets the first character and set it to c0
----- -----                     Subtracts 45 from c0
----- -----
----- -----         
----- -----
-----
[                               Checks if the first character of the substring is not a minus symbol
    +++++ +++++                 Adds 32 back to c0
    +++++ +++++
    +++++ +++++      
    +++++ +++++
    +++++      
    [                           Loop: Starts converting string input to positive integer
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
    ]                           Loop ends if c0 is null (or next number is null)
    >                           Go to c1
    [---------->+<]             Move c1 to c2 and divide c2 by 10
    <                           Go to c0
]               

,                               Gets the next character and set it to c1 but can be Null if input number is positive      
[                               Runs if the first character in the input is NOT a minus symbol
    [                           Loop: Starts converting string input to negative integer
        ----- -----             Subtract 48 from c0 (ASCII to Int)
        ----- -----
        ----- -----
        ----- -----
        ----- ---
        [->-<]                  Move c0 to c1 subtractively
        >                       Go to c1
        [                       
            [+>----------<]     Move c1 to c2 and multiply c2 by 10
            >                   Go to c2
            [+<->]              Move c2 back into c1
            <<                  Go to c0
        ]
        ,                       Get the next character from input and set it to c0        
    ]                           Loop ends if c0 is null (or next number is null)
    >                           Go to c1
    [++++++++++>-<]             Move c1 to c2 and divide c2 by 10
    <                           Go to c0
]

TESTING (Prints ASCII value of the integer at c2):
>>.