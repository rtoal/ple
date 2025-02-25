import string

def print_permutations(a, n)
    if n <= 0
        print(a.concat("\t"))
    else
        for i: 0..(n-1)
            print_permutations(a, n-1)
            j = (n % 2 == 0) ? 0 : i
            temp = a[j]
            a[j] = a[n]
            a[n] = temp
        end
        print_permutations(a, n-1)
    end
end

args = _argv
args.remove(0)
if (size(args) == 0)
    raise "ERROR: There must be at least 1 argument."
end
print_permutations(args, size(args)-1)
