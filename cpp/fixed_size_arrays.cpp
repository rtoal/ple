#include <iostream>

template <typename T, size_t N>
class Tuple {
    T data[N];
public:
    T& operator[](size_t index) {
        if (index >= N) {
            throw std::out_of_range("index out of range");
        }
        return data[index];
    }
};

template <typename T, size_t m, size_t n>
Tuple<T, m+n> append(Tuple<T, m>& t1, Tuple<T, n>& t2) {
    Tuple<T, m+n> result;
    for (size_t i = 0; i < m; i++) result[i] = t1[i];
    for (size_t i = 0; i < n; i++) result[i+m] = t2[i];
    return result;
}

int main() {
    const size_t x = 3;
    const size_t y = 5;
    Tuple<int, x> t;
    t[0] = 10, t[1] = 20, t[2] = 30;
    Tuple<int, y> u;
    u[0] = 1, u[1] = 2, u[2] = 3, u[3] = 4, u[4] = 5;
    Tuple<int, 8> v = append(t, u);
    for (size_t i = 0; i < 8; i++) {
        std::cout << v[i] << std::endl;
    }
}
