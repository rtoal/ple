#include <stdio.h>

extern void add_four_floats(float a[], float b[]);

int main() {
    float a[] = {1.0, 3.0, 21.0, 89.0};
    float b[] = {8.0, 55.0, 2.0, 5.0};
    add_four_floats(a, b);
    printf("%f %f %f %f\n", a[0], a[1], a[2], a[3]);
    return 0;
}