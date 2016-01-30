import sys

def generatePermutations(a, n):
    if n == 0:
        print(''.join(a))
    else:
        for i in range(n):
            generatePermutations(a, n-1)
            j = 0 if n % 2 == 0 else i
            a[j], a[n] = a[n], a[j]
        generatePermutations(a, n-1)

if len(sys.argv) != 2:
    sys.stderr.write('Exactly one argument is required\n')
    sys.exit(1)
word = sys.argv[1]
generatePermutations(list(word), len(word)-1)
