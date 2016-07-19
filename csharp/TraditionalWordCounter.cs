using System;
using System.Text.RegularExpressions;
using System.Collections.Generic;

class TraditionalWordCountApp
{
    public static void Main(string[] args)
    {
        SortedDictionary<string, int> counts = new SortedDictionary<string, int>();
        Regex wordRegex = new Regex(@"[\p{L}']+");
        string line;
        while ((line = Console.ReadLine()) != null)
        {
            line = line.ToLower();
            foreach (Match m in wordRegex.Matches(line))
            {
                String word = m.Value;
                int count;
                counts.TryGetValue(word, out count);
                counts[word] = ++count;
            }
        }
        foreach (KeyValuePair<string, int> pair in counts)
        {
            Console.WriteLine("{0} {1}", pair.Key, pair.Value);
        }
    }
}
