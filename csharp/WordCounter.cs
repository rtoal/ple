using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.IO;
using System.Linq;

namespace Examples
{
    static class WordCounter
    {
        static void Main(string[] args)
        {
            Regex wordRegex = new Regex(@"[\p{L}']+");
            StandardInputLines()
            .SelectMany(line => wordRegex.Matches(line).Cast<Match>())
            .Select(x => x.Value.ToLower())
            .GroupBy(x => x)
            .OrderBy(x => x.Key)
            .ToList()
            .ForEach(p => Console.WriteLine("{0} {1}", p.Key, p.Count()));
        }
        static IEnumerable<string> StandardInputLines()
        {
            string line;
            while ((line = Console.ReadLine()) != null)
            {
                yield return line;
            }
        }
    }
}
