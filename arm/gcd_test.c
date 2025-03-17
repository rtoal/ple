#include <stdio.h>
#include <assert.h>

extern unsigned int gcd(unsigned int a, unsigned int b);

int main() {
    assert(gcd(1, 1) == 1);
    assert(gcd(1, 0) == 1);
    assert(gcd(1024, 1280) == 256);
    assert(gcd(1024, 1281) == 1);
    assert(gcd(1001, 1331) == 11);
    puts("All tests passed");
    return 0;
}
