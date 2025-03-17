#include <stdio.h>
#include <assert.h>

extern int max_of_three(int x, int y, int z);

int main() {
    assert(max_of_three(1, 2, 3) == 3);
    assert(max_of_three(1, 3, 2) == 3);
    assert(max_of_three(2, 1, 3) == 3);
    assert(max_of_three(2, 3, 1) == 3);
    assert(max_of_three(3, 1, 2) == 3);
    assert(max_of_three(3, 2, 1) == 3);
    puts("All tests passed");
    return 0;
}
