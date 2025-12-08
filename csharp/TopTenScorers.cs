using System;
using System.IO;

static class TopTenScorers
{
    public record Player (string Team, string Name, float Avg) 
    {   
        public override string ToString() => 
            $"{Name,-22}{Team,-4}{Avg,8:F2}";
    }

    static IEnumerable<string> StandardInputLines()
    {
        string? line;
        while ((line = Console.ReadLine()) != null)
        {
            yield return line;
        }
    }

    static void Main()
    {
        IEnumerable<Player> players = 
            from line in StandardInputLines()
            let data = line.Split(",")
            let games = float.Parse(data[2])
            let points = float.Parse(data[3])
            let avg = points / games
            where games >= 15
            orderby avg descending
            select new Player(data[0], data[1], avg);
        int counter = 0;
        foreach (Player player in players)
        {
            Console.WriteLine(player);
            if (++counter >= 10) break;
        }
    }
}