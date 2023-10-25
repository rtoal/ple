#include <stdio.h>
#include <stdlib.h>

typedef struct { int x; int y; } point;

int main() {
    const double half = 0.5;
    // half = 0.75; // ERR: assignment of read-only variable ‘half’

    const point p = { 5, -8 };
    // p = (point) { 0, 0 }; // ERR: assignment of read-only var ‘p’
    // p.x = 0; // ERR: assignment of read-only member ‘x’ in ‘p’

    const int rolls[5] = { 2, 2, 6, 1, 3 };
    // rolls = { 1, 1, 1, 1, 1 }; // We already know this is illegal
    // rolls[0] = 1; // ERR: assignment of read-only location ‘rolls[0]’
    return EXIT_SUCCESS;
}
