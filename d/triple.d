import core.stdc.stdio;

void main() {
    for (int c = 0; c < 41; c++) {
        for (int b = 0; b < c; b++) {
            for (int a = 0; a < b; a++) {
                if (a * a + b * b == c * c) {
                    printf("%d, %d, %d\n", a, b, c);
                }
            }
        }
    }
}