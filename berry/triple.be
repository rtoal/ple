import string
for c: 1..40
    for b: 1..c
        for a: 1..b
            if a * a + b * b == c * c
                print(string.format("%d, %d, %d", a, b, c))
            end
        end
    end
end