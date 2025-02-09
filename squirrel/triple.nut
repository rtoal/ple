for (local c = 1; c < 41; c++)
{
    for (local b = 1; b < c; b++)
    {
        for (local a = 1; a < b; a++)
        {
            if (pow(a, 2) + pow(b, 2) == pow(c, 2))
            {
                printf("%d, %d, %d\n", a, b, c)
            }
        }
    }
}