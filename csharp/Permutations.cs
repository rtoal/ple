using System;

static class Permutations
{
    static void PrintPermutations(string[] a, int n)
    {
        if (n <= 0)
        {
            Console.WriteLine(string.Join("\t", a));
        }
        else
        {
            for (int i = 0; i < n; i++)
            {
                PrintPermutations(a, n - 1);
                int j = n % 2 == 0 ? 0 : i;
                (a[j], a[n]) = (a[n], a[j]);
            }
            PrintPermutations(a, n - 1);
        }
    }

    static void Main(string[] args)
    {
        if (args.Length < 1)
        {
            throw new Exception("ERROR: There must be at least 1 argument.");
        }
        PrintPermutations(args, args.Length - 1);
    }
}