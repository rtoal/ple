#include <stdio.h>
int main()
{
    for (int i = 0; i < 11; i++)
    {
        int t = (43200 * i + 21600) / 11;
        int h = t / 3600, m = t / 60 % 60, s = t % 60;
        printf("%02d:%02d:%02d\n", (h ? h : 12), m, s);
    }
    return 0;
}