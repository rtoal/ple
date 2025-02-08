#include <time.h>
#include <stdio.h>
#include <stdlib.h>
int main()
{
    for (int i = 0; i < 11; i++)
    {
        char s[9];
        time_t t = (time_t)((43200 * i + 21600) / 11);
        strftime(s, 9, "%I:%M:%S", gmtime(&t));
        printf("%s\n", s);
    }
    return 0;
}