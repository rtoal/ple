trait Animal {
    fn sound(&self) -> &'static str;
    fn name(&self) -> &'static str;
    fn speak(&self) -> String {
        format!("{} says {}", self.name(), self.sound())
    }
    fn new(name: &'static str) -> Self;
}

struct Horse {
    name: &'static str,
}

impl Animal for Horse {
    fn sound(&self) -> &'static str {
        "neigh"
    }
    fn new(name: &'static str) -> Horse {
        Horse {name: name}
    }
    fn name(&self) -> &'static str { self.name }
}

struct Cow {
    name: &'static str,
}

impl Animal for Cow {
    fn sound(&self) -> &'static str {
        "moooo"
    }
    fn new(name: &'static str) -> Cow {
        Cow {name: name}
    }
    fn name(&self) -> &'static str { self.name }
}

struct Sheep {
    name: &'static str,
}

impl Animal for Sheep {
    fn sound(&self) -> &'static str {
        "baaaa"
    }
    fn new(name: &'static str) -> Sheep {
        Sheep {name: name}
    }
    fn name(&self) -> &'static str { self.name }
}

fn main() {
    let h = Horse::new("CJ");
    println!("{}", h.speak());
    let c : Cow = Animal::new("Bessie");
    println!("{}", Animal::speak(&c));
    println!("{}", Sheep::speak(&Sheep::new("Little Lamb")));
}
