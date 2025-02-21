generatePermutations := method (word, n,
    if (n <= 0,
        word println,
        for (i, 0, n-1,
            generatePermutations(word, n-1)
            j := if (n isEven, 0, i)
            temp := word at(j)
            word atPut(j, word at(n))
            word atPut(n, temp)
        )
        generatePermutations(word, n-1)
    ) 
)

if (System args size != 2,
    Exception raise("Exactly 1 arguments is required."),
    word := System args at(1)
    generatePermutations(word asMutable, word size - 1)
)