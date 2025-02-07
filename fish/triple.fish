for c in (seq 40)
    for b in (seq (math $c - 1))
        for a in (seq (math $b - 1))
            if test (math $a ^ 2 + $b ^ 2) -eq (math $c ^ 2)
                echo $a, $b, $c
            end
        end
    end
end