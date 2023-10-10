function printpermutations(a, n)
    if n <= 0
        println(join(a, "\t"))
    else
        for i = 1:n-1
            printpermutations(a, n-1)
            local j = iseven(n) ? i : 1
            a[j], a[n] = a[n], a[j]
        end
        printpermutations(a, n-1)
    end
end

printpermutations(ARGS, length(ARGS))
