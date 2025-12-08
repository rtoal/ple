using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

static class TraditionalWordCounter
{
    static void Main()
    {
        var counts = new SortedDictionary<string, int>();
        var wordRegex = new Regex(@"[\p{L}']+");
        string? line;
        while ((line = Console.ReadLine()?.ToLower()) != null)
        {
            foreach (Match match in wordRegex.Matches(line))
            {
                int count;
                counts.TryGetValue(match.Value, out count);
                counts[match.Value] = count + 1;
            }
        }
        foreach (var pair in counts)
        {
            Console.WriteLine("{0} {1}", pair.Key, pair.Value);
        }
    }
}