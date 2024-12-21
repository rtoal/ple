[
    Below is an example of a simple addion between two variables. 
    These variables, c0 and c1 (or Cell #0 and Cell #1), are added
    together, however c0 and c1 won't have the same values before
    and after the operation (a.k.a they are mutable). Hence, if 
    you want to reuse these variables, you have to copy it somewhere 
    else in memory.
]

[->+<]          Simple example of destructive addition between two variables.


[               Loop begins starting at c0 
    -           Decrement c0 by 1
    >           Move data pointer from c0 -> c1
    +           Increment c1 by 1
    <           Move data pointer from c1 -> c0
]               Check if c0 is 0 otherwise start the loop again
                (Note if c0 is 0 then the loop will not run)