// This little exploration features a bunch of directives.
// Run with `gcc -E directives.c` to see prepreprocessor output.

#include <assert.h>
#define ZERO 0
#define MAX(a,b) ((a) > (b) ? (a) : (b))

#ifdef ZERO
    #define ONE 1
#else
    #define ONE 0
#endif

#warning "This is a warning, don't worry about it (j/k)."

int main() {
    int x = MAX(ONE, ZERO);
    #line 1000
    int y = MAX(ONE, ZERO);
    #line 700
    int z = x * MAX(x + y, ZERO);
    assert(701 == __LINE__);

    int line =  __LINE__;
    char* filename = __FILE__;
    int version = __STDC_VERSION__;
    char* compiledAt = __DATE__ __TIME__;

    #warning "Line numbers are crazy, right?"
    return ZERO * ONE;
}

#undef ONE
