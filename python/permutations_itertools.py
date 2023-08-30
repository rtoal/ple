import sys
from itertools import permutations

for permutation in permutations(sys.argv[1:]):
    print(' '.join(permutation))
