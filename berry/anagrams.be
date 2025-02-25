import string

def join(a)
    str = ""
    for s: a
        str = str .. s
    end
    return str
end

def to_char_array(s)
    current = s
    a = []
    for i: 0..(size(s)-1)
        a = a .. string.split(current, 1)[0]
        current = string.split(current, 1)[1]
    end
    return a
end

def generate_permutations(a, n)
    if n <= 0
        print(join(a))
    else
        for i: 0..(n-1)
            generate_permutations(a, n-1)
            j = (n % 2 == 0) ? 0 : i
            temp = a[j]
            a[j] = a[n]
            a[n] = temp
        end
        generate_permutations(a, n-1)
    end
end

if (size(_argv) != 2)
    raise "ERROR: There must be exactly 1 argument."
end
generate_permutations(to_char_array(_argv[1]), size(_argv[1])-1)
