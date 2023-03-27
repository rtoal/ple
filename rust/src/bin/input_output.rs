use std::io;

fn main() {

    println!("Input your favorite coding language.");

    let mut language = String::new();

    io::stdin()
        .read_line(&mut language)
        .expect("Could not read line"); 
    
    language = String::from(language.to_lowercase().trim());
    if language == "rust" {
        //ERROR: code ignores line even if I write Rust as my input
        println!("That is a great answer! {language} is the best.");
    } else {
        //ERROR: writes the language as one line, and the rest as another line
        println!("{language}: is your favorite coding language! Nice choice.");
    }

}