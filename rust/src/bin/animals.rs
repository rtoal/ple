trait Speaker {
    fn name(&self) -> &'static str;
    fn sound(&self) -> &'static str;
    fn speak(&self) -> String {
        format!("{} says {}", self.name(), self.sound())
    }
}

struct Horse {
    name: &'static str,
}

impl Speaker for Horse {
    fn name(&self) -> &'static str { self.name }
    fn sound(&self) -> &'static str { "neigh" }
}

struct Cow {
    name: &'static str,
}

impl Speaker for Cow {
    fn name(&self) -> &'static str { self.name }
    fn sound(&self) -> &'static str { "moooo" }
}

// Static dispatch example (trait bounds)
fn print_dialog_line<T: Speaker>(animal: &T) {
    println!("Narrator: {}", animal.speak());
}

fn main() {
    let h = Horse { name: "CJ" };
    let c = Cow { name: "Bessie" };

    print_dialog_line(&h);

    // Dynamic dispatch example (trait objects)
    let animals: Vec<&dyn Speaker> = vec![&h, &c];
    for animal in animals.iter() {
        println!("{}", animal.speak());
    }
}
