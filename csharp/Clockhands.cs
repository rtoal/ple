using System;
public class AntiparallelClockHandsComputer
{
    public static void Main()
    {
        for (var i = 0; i < 11; i++)
        {
            var t = (43200 * i + 21600) / 11;
            (var h, var m, var s) = (t / 3600, t / 60 % 60, t % 60);
            Console.WriteLine("{0:00}:{1:00}:{2:00}", (h != 0 ? h : 12), m, s);
        }
    }
}