import sys
from itertools import permutations

if len(sys.argv) != 2:
    sys.stderr.write('Exactly one argument is required\n')
    sys.exit(1)

for word in (''.join(p) for p in permutations(sys.argv[1])):
    print(word)
