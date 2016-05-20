#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void swap(char *source, int i, int j) {
    char saved = source[i];
    source[i] = source[j];
    source[j] = saved;
}

void generate_permutations(char* a, int n) {
    if (n == 0) {
        printf("%s\n", a);
    } else {
        for (int i = 0; i < n; i++) {
            generate_permutations(a, n-1);
            swap(a, n % 2 == 0 ? 0 : i, n);
        }
        generate_permutations(a, n-1);
    }
}

int main(int argc, const char* argv[]) {

    if (argc != 2) {
        fprintf(stderr, "Need exactly one argument!\n");
        return 1;
    }

    size_t len = strlen(argv[1]);
    char *word = malloc(len + 1);
    word = strncpy(word, argv[1], len);

    generate_permutations(word, len-1);

    free(word);
    return 0;
}
