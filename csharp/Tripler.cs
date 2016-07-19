using System;

namespace Examples
{
    static class Tripler
    {
        static void Main(string[] args)
        {
            for (int c = 1; c <= 40; c++)
            {
                for (int b = 1; b < c; b++)
                {
                    for (int a = 1; a < b; a++)
                    {
                        if (a * a + b * b == c * c)
                        {
                            Console.WriteLine("{0:D}, {1:D}, {2:D}", a, b, c);
                        }
                    }
                }
            }
        }
    }
}
