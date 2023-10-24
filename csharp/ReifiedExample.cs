public class Box<T>
{
    public T Value { get; set; }
}

public class ReifiedExample
{
    public static void Main()
    {
        Box<int> intBox = new Box<int>();
        Box<string> stringBox = new Box<string>();
        System.Console.WriteLine(intBox.GetType()); // Box`1[System.Int32]
        System.Console.WriteLine(stringBox.GetType()); // Box`1[System.String]
    }
}
