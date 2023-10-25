#include <iostream>
#include <vector>
#include <utility>

void generate_permutations(int n, std::vector<std::string>& a) {
    if (n == 0) {
        for (const std::string& s : a) {
            std::cout << s << "\t";
        }
        std::cout << std::endl;
    } else {
        for (int i = 0; i < n; i++) {
            generate_permutations(n - 1, a);
            std::swap(a[n % 2 == 0 ? 0 : i], a[n]);
        }
        generate_permutations(n - 1, a);
    }
}

int main(int argc, char* argv[]) {
    std::vector<std::string> args(argv + 1, argv + argc);
    generate_permutations(args.size() - 1, args);
    return 0;
}
