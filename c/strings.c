#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    char s[25];                         // large buffer, ok
    s[0] = 'H';
    s[1] = 'i';
    s[2] = '!';
    s[3] = '\x00';                      // zero terminator!
    assert(strlen(s) == 3);             // length of string
    assert(strcmp(s, "Hi!") == 0);      // compare (equal)
    assert(strcmp(s, "Hat") < 0);       // compare (less)
    assert(strcmp(s, "Yo") > 0);        // compare (greater)
    assert(strstr(s, "i!") == s + 1);   // find substring
    assert(strstr(s, "x") == NULL);
    assert(strchr(s, '!') == s + 2);    // find character
}
