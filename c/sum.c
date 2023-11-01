#include <assert.h>
#include <stdlib.h>

int sum(int* a, unsigned int length) {
    int total = 0;
    for (unsigned int i = 0; i < length; i++) {
        total += a[i];
    }
    return total;
}

int main() {
    int a[] = {7, 3, -8, 4, 1, 0, 11, 2};

    assert(sum(a, 3) == 2);      // sum of first three elements
    assert(sum(a, 8) == 20);     // sum of all elements
    assert(sum(a + 3, 2) == 5);  // a[3]+a[4]
    return EXIT_SUCCESS;
}
