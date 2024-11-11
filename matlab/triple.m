for c = 1:40
    for b = 1:c
        for a = 1:b
            if a ^ 2 + b ^ 2 == c ^ 2
                fprintf('%d, %d, %d\n', a, b, c);
            end
        end
    end
end