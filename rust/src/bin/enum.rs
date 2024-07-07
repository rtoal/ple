enum Instruction {
  PenUp,
  PenDown,
  ChangeColor {red: u8, green: u8, blue: u8},
  MoveTo(f64, f64),
  Turn(f64),
  Forward(f64),
}

fn show(i: Instruction) {
    match i {
        Instruction::PenUp => println!("Pause"),
        Instruction::PenDown => println!("Here we go"),
        Instruction::ChangeColor {red: r, green: g, blue: b} =>
          println!("Color now #{:02x}{:02x}{:02x}", r, g, b),
        Instruction::MoveTo(x, y) => println!("Going to {}, {}", x, y),
        Instruction::Turn(angle) => println!("Turning {}", angle),
        Instruction::Forward(units) => println!("Moving {}", units), 
    }
}

fn main() {
    show(Instruction::Turn(-90.0));
    show(Instruction::ChangeColor {red: 3, green: 250, blue: 15});
    show(Instruction::PenDown);
    show(Instruction::Forward(100.0));
    show(Instruction::MoveTo(40.0, 60.0));
    show(Instruction::PenUp);
}
