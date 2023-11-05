#include <stdlib.h>
#include <stdio.h>

int* f() {
    static int z;  // z has static storage duration
    int x = 5;     // x has automatic storage duration
    return &x;     // Terrible code, will return a dangling pointer
}                  // Compiling this code should generate a warning

void g() { int y = 8; }

int main() {
    int* p = f();           // Terrible code
    g();                    // g's frame might overlay f's
    printf("%d\n", *p);     // Undefined behavior, but might print 8
    return EXIT_SUCCESS;
}
