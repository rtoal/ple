#include <stdlib.h>
#include <assert.h>

typedef struct { int x; int y; } point;

int main() {
    short a[3] = { 1776, 1791, 1789 };
    short b[3] = { 500, 100, 1500 };

    point p = { 5, -8 };
    point q = { -3, 21 };

    // a = b;        // DOES NOT COMPILE!
                     // array type 'short[3]' is not assignable
    a[1] = b[1];     // but this is ok

    p = q;           // all 8 bytes copied
    p.x = 0;         // writing to p's memory, not q's
    p.y = 0;
    assert(q.x == -3 && q.y == 21); // q unchanged!

    return EXIT_SUCCESS;
}
