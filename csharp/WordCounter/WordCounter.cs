using System;
using System.Text.RegularExpressions;
using System.Linq;

var wordRegex = new Regex(@"[\p{L}']+");

IEnumerable<string> StandardInputLines()
{
    string? line;
    while ((line = Console.ReadLine()) != null)
    {
        yield return line;
    }
}

StandardInputLines()
    .SelectMany(line => wordRegex.Matches(line).Cast<Match>())
    .Select(m => m.Value.ToLower())
    .GroupBy(word => word)
    .OrderBy(g => g.Key)
    .ToList()
    .ForEach(g => Console.WriteLine("{0} {1}", g.Key, g.Count()));
