#include <stdio.h>
#include <stdlib.h>

int main() {
    double half = 0.5;
    char vowel = 'a';
    short years[3] = { 1776, 1791, 1789 };
    struct { int x; int y; } point = { 5, -12 };
    printf("sizeof types char=%lu, short=%lu, int=%lu double=%lu\n",
        sizeof(char), sizeof(short), sizeof(int), sizeof(double));
    printf("sizeof vars half=%lu, vowel=%lu, years=%lu, point=%lu\n",
        sizeof half, sizeof vowel, sizeof years, sizeof point);
    return EXIT_SUCCESS;
}
