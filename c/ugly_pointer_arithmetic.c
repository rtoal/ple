#include <stdio.h>
#include <stdlib.h>

int main() {
    double x = 395.22;
    int y = 5;
    int z = -393;
    printf("&x = %p, &y = %p, &z = %p\n", &x, &y, &z);
    printf("&z+1 = %p, &z+2 = %p, &z+3 = %p\n", &z+1, &z+2, &z+3);
    return EXIT_SUCCESS;
}
