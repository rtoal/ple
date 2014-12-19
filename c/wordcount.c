#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/*
  Null terminates first word, and returns a pointer to the start of the next word. If it hits the null
  terminator, it will return 0.
*/
char* find_next_word (char *str) {
    while ((*str >= 'a' && *str <= 'z') || (*str >= 'A' && *str <= 'Z') || *str == '\'' || *str == '\0') {
        if (*str == '\0')
            return 0;

        str++;
    }

    *str++ = '\0'; // Found end of first word

    while (!((*str >= 'a' && *str <= 'z') || (*str >= 'A' && *str <= 'Z') || *str == '\'') || *str == '\0') {
        if (*str == '\0')
            return 0;

        str++;
    }

    return str; // Found begining of second word
}
