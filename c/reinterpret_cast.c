#include <inttypes.h>
#include <assert.h>

int main() {
    int32_t a = 0b11000010101110101000000000000000;
    float b = *(float*)&a;
    assert(a == -1027964928);
    assert(b == -93.25);
    return 0;
}