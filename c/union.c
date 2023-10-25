#include <stdio.h>
#include <stdlib.h>

union {
    int level;
    char button;
} action;

int main() {
    printf("&level=%p, &button=%p\n", &action.level, &action.button);
    action.level = 333;
    printf("level=%d, button=%c\n", action.level, action.button);
    return EXIT_SUCCESS;
}
