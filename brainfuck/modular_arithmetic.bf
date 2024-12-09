[
    Demonstration of how calculations are made when incrementing and decrementing values.
]

Lets start with adding 7 to c0
+++++ ++

If we want to set 7 back to 0 we can use the following prefab code:
[-]
This code checks c0 if it is not zero and decrements 1 and it will do that repeatedly
until c0 is zero

This works for any positive integers and if we want to do it for negative numbers
we can do this:
[+]
Instead of decrementing by 1 we are incrementing by 1

However; what if we do this?
----- ---
[-]
We set c0 to -8 but we are also setting it back to 0 using decrements! But c0 is negative and
mathematically it can't reach back to 0! Is the code going to loop forever?

When we actually run the code; it will terminate! This is because of modular arithmetic as
each individual memory can only store 1 byte of information; this makes it possible to reset
any numbers back to zero without needing to worry if the number is positive or negative!

Additionally each byte can store numbers 0 and 255 so resetting numbers is not computationally
long 

Here is the same code but you can view the results below:
-           Subtracts 1 from c0
[-.]        Resets c0 while printing each ASCII character in decreasing order

And similarly if we do it with positive numbers:
+           Adds 1 to c0
[+.]        Resets c0 while printing each ASCII character in increasing order