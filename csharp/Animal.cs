using System;
using System.Diagnostics;

abstract class Animal
{
    public string Name { get; }

    public Animal(string name) => Name = name;

    public virtual string Speak() => $"{Name} says {Sound()}";
    
    public abstract string Sound();
}

class Cow : Animal 
{ 
    public Cow(string name) : base(name) { }
    public override string Sound() => "moooo";
}

class Horse : Animal 
{
    public Horse(string name) : base(name) { }
    public override string Sound() => "neigh"; 
}

class Sheep : Animal 
{
    public Sheep(string name) : base(name) { }  
    public override string Sound() => "baaaa"; 
}

static class AnimalPlay
{
    static void Main()
    {
        Animal h = new Horse("CJ");
        Debug.Assert(h.Speak() == "CJ says neigh");
        Cow c = new("Bessie");
        Debug.Assert(c.Speak() == "Bessie says moooo");
        Debug.Assert(new Sheep("Little Lamb").Speak() == "Little Lamb says baaaa");
    }
}