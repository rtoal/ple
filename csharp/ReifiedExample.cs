using System;

class Box<T> {}

static class ReifiedExample
{
    static void Main()
    {
        Box<int> intBox = new Box<int>();
        Box<string> stringBox = new Box<string>();
        Console.WriteLine(intBox.GetType()); // Box`1[System.Int32]
        Console.WriteLine(stringBox.GetType()); // Box`1[System.String]
    }
}
