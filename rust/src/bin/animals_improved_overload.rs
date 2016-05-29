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

#[derive(Debug)]
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

impl <T: Animal> PartialEq<T> for Horse {
    fn eq(&self, other: &T) -> bool {
        self.get_attributes() == other.get_attributes()
    }
}
impl Eq for Horse {}


#[derive(Debug)]
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
impl <T: Animal> PartialEq<T> for Cow {
    fn eq(&self, other: &T) -> bool {
        self.get_attributes() == other.get_attributes()
    }
}
impl Eq for Cow {}

#[derive(Debug)]
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
impl <T: Animal> PartialEq<T> for Sheep {
    fn eq(&self, other: &T) -> bool {
        self.get_attributes() == other.get_attributes()
    }
}
impl Eq for Sheep {}

fn main() {
    let h = Horse::new("CJ");
    println!("{}", h.speak());
    let c : Cow = Animal::new("Bessie");
    println!("{}", Animal::speak(&c));
    println!("{}", Sheep::speak(&Sheep::new("Little Lamb")));
    let cj_cow = Cow::new("CJ");
    assert!(h == cj_cow);
}
