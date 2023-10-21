#include <stdio.h>
#include <stdlib.h>

int main() {
    double half = 0.5;
    char vowel = 'a';
    printf("&vowel = %p, &half = %p\n", &vowel, &half);
    *(&vowel + 9) = 'z';
    printf("%g\n", half);
    return EXIT_SUCCESS;
}
