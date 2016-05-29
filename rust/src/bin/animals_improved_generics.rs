#[derive(PartialEq, Eq, Debug)]
struct AnimalAttributes {
    name: &'static str,
}

trait Animal {
    fn sound(&self) -> &'static str;
    fn speak(&self) -> String {
        format!("{} says {}", self.get_attributes().name, self.sound())
    }
    fn has_same_name <T: Animal> (&self, other: &T) -> bool {
        self.get_attributes().name == other.get_attributes().name
    }
    fn new(name: &'static str) -> Self;
    fn get_attributes(&self) -> &AnimalAttributes;
}

#[derive(PartialEq, Eq, Debug)]
struct Horse {
    animal: AnimalAttributes,
}

impl Animal for Horse {
    fn sound(&self) -> &'static str {
        "neigh"
    }
    fn new(name: &'static str) -> Horse {
        Horse {
            animal: AnimalAttributes {
                name: name,
            }
        }
    }
    fn get_attributes(&self) -> &AnimalAttributes {
        &self.animal
    }
}

#[derive(PartialEq, Eq, Debug)]
struct Cow {
    animal: AnimalAttributes,
}

impl Animal for Cow {
    fn sound(&self) -> &'static str {
        "moooo"
    }
    fn new(name: &'static str) -> Cow {
        Cow {
            animal: AnimalAttributes {
                name: name,
            }
        }
    }
    fn get_attributes(&self) -> &AnimalAttributes {
        &self.animal
    }
}

#[derive(PartialEq, Eq, Debug)]
struct Sheep {
    animal: AnimalAttributes,
}

impl Animal for Sheep {
    fn sound(&self) -> &'static str {
        "baaaa"
    }
    fn new(name: &'static str) -> Sheep {
        Sheep {
            animal: AnimalAttributes {
                name: name,
            }
        }
    }
    fn get_attributes(&self) -> &AnimalAttributes {
        &self.animal
    }
}

fn main() {
    let h = Horse::new("CJ");
    println!("{}", h.speak());
    let c : Cow = Animal::new("Bessie");
    println!("{}", Animal::speak(&c));
    println!("{}", Sheep::speak(&Sheep::new("Little Lamb")));
    let cj_cow = Cow::new("CJ");
    assert!(h.has_same_name(&cj_cow));
    assert!(cj_cow.has_same_name(&h));
}
