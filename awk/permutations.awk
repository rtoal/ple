function print_array(a) {
    if (ARGC == 1) return
    printf "%s", a[0]
    for (i = 1; i < ARGC - 1; i++) {
        printf "\t%s", a[i]
    }
    print ""
}

function print_permutations(a, n,  i, j, old_last) {
    if (n == 0) {
        print_array(a)
    } else {
        for (i = 0; i < n; i++) {
            print_permutations(a, n - 1)
            j = (n % 2 == 0) ? 0 : i
            old_last = a[n];
            a[n] = a[j];
            a[j] = old_last;
        }
        print_permutations(a, n - 1)
    }
}

BEGIN {
    for (i = 0; i < ARGC - 1; i++) {
        a[i] = ARGV[i + 1]
    }
    print_permutations(a, ARGC - 2);
}
