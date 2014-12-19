#include <assert.h>
#include <stdio.h>

#include "sum_of_even_squares.c"
#include "wordcount.c"

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

void test_find_next_word() {
    const char* helo = "Hello, world!";
    char hello[14];
    strcpy(hello, helo);
    assert(*find_next_word(hello) == 'w');

    const char* dar = "The dårk and størmy night's cat";
    char *dark = malloc(strlen(dar + 1));
    strcpy(dark, dar);
    dark = find_next_word(dark);
    assert(*dark == 'd');
    dark = find_next_word(dark);
    assert(*dark == 'r');
    dark = find_next_word(dark);
    assert(*dark == 'a');
    dark = find_next_word(dark);
    assert(*dark == 's');
    dark = find_next_word(dark);
    assert(*dark == 'r');
    dark = find_next_word(dark);
    assert(*dark == 'n');
    dark = find_next_word(dark);
    assert(*dark == 'c');
}

int main() {
    test_sum_of_even_squares();
    test_find_next_word();
    printf("All tests passed\n");
    return 0;
}
