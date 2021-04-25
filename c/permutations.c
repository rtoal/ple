#include <stdio.h>

void print_string_array(char *a[], int size) {
    if (size == 0) {
        return;
    }
    printf("%s", a[0]);
    for (int i = 1; i < size; i++) {
        printf("\t%s", a[i]);
    }
    printf("\n");
}

void print_permutations(char *a[], int n, int size) {
    if (n == 0) {
        print_string_array(a, size);
    } else {
        for (int i = 0; i < n; i++) {
            print_permutations(a, n - 1, size);
            int j = n % 2 == 0 ? 0 : i;
            char* old_last = a[n];
            a[n] = a[j];
            a[j] = old_last;
        }
        print_permutations(a, n - 1, size);
    }
}

int main(int argc, char *argv[]) {
    print_permutations(argv + 1, argc - 2, argc - 1);
    return 0;
}
