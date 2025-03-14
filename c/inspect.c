#include <stdio.h>
#include <stdlib.h>

int g0 = 1;    // initialized global
int g1[1000];  // uninitialized global
int g2 = 3;    // initialized global
int g3;        // uninitialized global

void f() {
    double x;
    printf("x @ %p\n", &x);
    if (g2-- > 0) f();
}

// The main function has two local variables, p and q, and
// allocates two blocks of memory @ run time.
int main() {
    int* p = malloc(sizeof(int) * 20); // dynamically allocated
    int* q = malloc(sizeof(int) * 50); // dynamically allocated
    printf("g0 @ %p, g1 @ %p, g2 @ %p, g3 @ %p\n", &g0, &g1, &g2, &g3);
    f();
    printf("main @ %p, f @ %p\n", &main, &f);
    printf("p @ %p, q @ %p, *p @ %p, *q @ %p\n", &p, &q, p, q);

    // C requires manual cleanup of dynamically allocated memory
    free(p);
    free(q);
    return EXIT_SUCCESS;
}
