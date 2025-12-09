using System;

static class VerbatimIdentifier
{
    static void Main()
    {
        // Case 1 - Verbatim String
        Console.WriteLine(@"To make a new line, type \n in the string");
        Console.WriteLine("To make a new line, type \n in the string");

        // Case 2 - Keyword Variables
        string @event = "St. Patrick's Day";
        string @class = "Dr. Toal - Programming Languages and Explorations I";
        string @interface = "Windows 11";
        Console.Write($"{@event}\n{@class}\n{@interface}");
    }
}