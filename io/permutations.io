generatePermutations := method (a, n,
    if (n <= 0,
        a join("\t") println,
        for (i, 0, n-1,
            generatePermutations(a, n-1)
            j := if (n isEven, 0, i)
            temp := a at(j)
            a atPut(j, a at(n))
            a atPut(n, temp)
        )
        generatePermutations(a, n-1)
    ) 
)

if (System args size == 1,
    Exception raise("1 or more arguments is required."),
    a := System args slice(1)
    generatePermutations(a, a size - 1)
)