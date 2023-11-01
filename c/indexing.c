#include <stdlib.h>
#include <assert.h>

int main() {
    int a[5] = { 10, 20, 30, 40, 50 };
    assert(a[2] == 30 && 2[a] == 30);
    assert(*(a + 2) == 30 && *(2 + a) == 30);
    assert(a == &a[0]);
    assert(&a[2] == a + 2);
    return EXIT_SUCCESS;
}
