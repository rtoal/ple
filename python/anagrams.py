import sys

def generatePermutations(n, a):
    if n == 0:
        print(''.join(a))
    else:
        for i in range(n+1):
            generatePermutations(n-1, a)
            swap_index = i if n % 2 == 0 else 0
            a[swap_index], a[n] = a[n], a[swap_index]

if len(sys.argv) != 2:
    sys.stderr.write('Exactly one argument is required\n')
    sys.exit(1)
word = sys.argv[1]
generatePermutations(len(word)-1, list(word))
