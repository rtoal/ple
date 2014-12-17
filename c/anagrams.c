#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char* swap (char* source, int i, int j) {
    char saved = source[i];
    source[i] = source[j];
    source[j] = saved;
}

void generate_permutations (int n, char* a) {
    if (n == 0) {
        printf("%s\n", a);
    } else {
        for (int i = 0; i <= n; i++) {
            generate_permutations(n - 1, a);
            swap(a, n % 2 == 0 ? i : 0, n);
        }
    }
}


int main (int argc, const char* argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Need exactly one argument!\n");
        return 1;
    }
    
    size_t len = strlen(argv[1]);
    char * word = malloc(len + 1); // Remember null terminator
    word = strncpy(word, argv[1], len);
    
    generate_permutations(len - 1, word);
    return 0;
}
