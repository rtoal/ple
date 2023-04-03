struct Animals {
    name: String,
    sound: String,
}

impl Animals {
    fn horse(name: &str) -> Animals {
        Animals {
            name: String::from(name),
            sound: String::from("Neigh"),
        }
    }

    fn cat(name: &str) -> Animals {
        Animals {
            name: String::from(name),
            sound: String::from("Meow"),
        }
    }

    fn sheep(name: &str) -> Animals {
        Animals {
            name: String::from(name),
            sound: String::from("Baah"),
        }
    }
}

fn main() {
    let cj = Animals::horse("CJ");
    println!("{0}! My name is {1}", cj.sound, cj.name);

    let mittens = Animals::cat("Mittens");
    println!("{0}! My name is {1}", mittens.sound, mittens.name);

    let lamb = Animals::sheep("Little Lamb");
    println!("{0}! My name is {1}", lamb.sound, lamb.name);
}