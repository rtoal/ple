#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/*
  Null terminates first word, and returns a pointer to the start of the next word
*/
char* find_next_word (char *str) {
    while ((*str >= 'a' && *str <= 'z') || (*str >= 'A' && *str <= 'Z') || *str == '\'') {
        str++;
    }
    *str = '\0';
    return ++str;
}
