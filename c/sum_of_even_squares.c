int sum_of_even_squares(int* a, unsigned int length) {
    int total = 0;
    for (unsigned int i = 0; i < length; i++) {
        if (a[i] % 2 == 0) {
            total += a[i] * a[i];
        }
    }
    return total;
}

#include <assert.h>

static int a[] = {7, 3, -8, 4, 1, 0, 11, 2};

int main() {
    assert(sum_of_even_squares(a, 0) == 0);
    assert(sum_of_even_squares(a, 1) == 0);
    assert(sum_of_even_squares(a, 2) == 0);
    assert(sum_of_even_squares(a, 3) == 64);
    assert(sum_of_even_squares(a, 4) == 80);
    assert(sum_of_even_squares(a, 5) == 80);
    assert(sum_of_even_squares(a, 6) == 80);
    assert(sum_of_even_squares(a, 7) == 80);
    assert(sum_of_even_squares(a, 8) == 84);
    return 0;
}
