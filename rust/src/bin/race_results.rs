enum RaceResult {
    Time(f64),
    DidNotFinish,
}

fn main() {
    let alice_result = RaceResult::Time(53.23);
    let _bob_result = RaceResult::DidNotFinish;

    if let RaceResult::Time(alice_time) = alice_result {
        println!("Alice's time: {}", alice_time);
    }
}
