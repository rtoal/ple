#include <stdio.h>
#include <stdlib.h>

int main() {
    int y = 5;
    int z = -393;
    *(&z + 1) = 233;
    printf("y = %d\n", y);
    return EXIT_SUCCESS;
}
