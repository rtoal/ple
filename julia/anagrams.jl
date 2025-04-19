function generatepermutations(a, n)
    if n == 1
        println(join(a, ""))
    else
        for i = 1:n-1
            generatepermutations(a, n-1)
            local j = iseven(n) ? i : 1
            a[j], a[n] = a[n], a[j]
        end
        generatepermutations(a, n-1)
    end
end

if length(ARGS) != 1
    println(stderr, "Exactly one argument is required")
    exit(1)
end
generatepermutations(split(ARGS[1], ""), length(ARGS[1]))
