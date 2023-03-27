#include <stdio.h>

int main()
{

    FILE *fp = fopen(__FILE__, "r");

    if (fp == NULL)
    {
        perror("Error opening file");
        return -2;
    }

    char c;

    while (c != EOF)
    {
        c = getc(fp);
        putchar(c);
    }

    fclose(fp);
    return 0;
}
