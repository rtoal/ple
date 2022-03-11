#include <iostream>
#include <utility>

void printStringArray(char *a[], int size) {
    if (size != 0) {
        std::cout << a[0];
        for (int i = 1; i < size; i++) {
            std::cout << "\t" << a[i];
        }
        std::cout << "\n";
    }
}

void printPermutations(char *a[], int n, int size) {
    if (n == 0) {
        printStringArray(a, size);
    } else {
        for (int i = 0; i < n; i++) {
            printPermutations(a, n - 1, size);
            int j = n % 2 == 0 ? 0 : i;
            std::swap(a[n], a[j]);
        }
        printPermutations(a, n - 1, size);
    }
}

int main(int argc, char *argv[]) {
  printPermutations(argv + 1, argc - 2, argc - 1);
}