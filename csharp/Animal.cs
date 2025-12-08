using System;
using System.Diagnostics;

abstract class Animal(string name)
{
    public string Name { get; } = name;

    public virtual string Speak() => $"{Name} says {Sound()}";
    
    public abstract string Sound();
}

class Cow(string name) : Animal(name) { public override string Sound() => "moooo"; }
class Horse(string name) : Animal(name) { public override string Sound() => "neigh"; }
class Sheep(string name) : Animal(name) { public override string Sound() => "baaaa"; }

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