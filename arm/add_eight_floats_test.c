#include <stdio.h>

extern void add_eight_floats(float a[], float b[]);

int main() {
    float a[] = {1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5};
    float b[] = {3.5, 2.5, 1.5, 0.5, -0.5, -1.5, -2.5, -3.5};
    add_eight_floats(a, b);
    printf(
        "%f %f %f %f %f %f %f %f\n",
        a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]
    );
    return 0;
}