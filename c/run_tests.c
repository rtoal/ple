#include <assert.h>
#include <stdio.h>

#include "sum_of_even_squares.c"

static int a[] = {7, 3, -8, 4, 1, 0, 11, 2};

void test_sum_of_even_squares() {
    assert(sum_of_even_squares(a, 0) == 0);
    assert(sum_of_even_squares(a, 1) == 0);
    assert(sum_of_even_squares(a, 2) == 0);
    assert(sum_of_even_squares(a, 3) == 64);
    assert(sum_of_even_squares(a, 4) == 80);
    assert(sum_of_even_squares(a, 5) == 80);
    assert(sum_of_even_squares(a, 6) == 80);
    assert(sum_of_even_squares(a, 7) == 80);
    assert(sum_of_even_squares(a, 8) == 84);
}

int main() {
    test_sum_of_even_squares();
    printf("All tests passed\n");
    return 0;
}
