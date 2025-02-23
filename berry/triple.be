for c: 1..40
    for b: 1..c
        for a: 1..b
            if a * a + b * b == c * c
                print([a, b, c].concat(", "))
            end
        end
    end
end