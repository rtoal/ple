for c = 1 to 40 do
    for b = 1 to c do
        for a = 1 to b do 
            // Exponential operator exists (**) for floats, but it will 
            // result in floating point arithmetic inaccuracies.
            if a * a + b * b = c * c then
                printfn $"{a}, {b}, {c}"