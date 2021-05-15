import sys

def print_permutations(a, n):
    if n <= 0:
        print("\t".join(a))
    else:
        for i in range(n):
            print_permutations(a, n - 1)
            j = 0 if n % 2 == 0 else i
            a[j], a[n] = a[n], a[j]
        print_permutations(a, n - 1)

values = sys.argv[1:]
print_permutations(values, len(values) - 1)
