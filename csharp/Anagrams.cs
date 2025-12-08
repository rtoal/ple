using System;

static class Anagrams
{
    static void GeneratePermutations(char[] a, int n)
    {
        if (n <= 0)
        {
            Console.WriteLine(new string(a));
        }
        else
        {
            for (int i = 0; i < n; i++)
            {
                GeneratePermutations(a, n - 1);
                int j = n % 2 == 0 ? 0 : i;
                (a[j], a[n]) = (a[n], a[j]);
            }
            GeneratePermutations(a, n - 1);
        }
    }

    static void Main(string[] args)
    {
        if (args.Length != 1)
        {
            throw new Exception("ERROR: There must be exactly 1 argument.");
        }
        GeneratePermutations(args[0].ToCharArray(), args[0].Length - 1);
    }
}