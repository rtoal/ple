#![feature(std_misc)]
pub mod string_generator {
    use std::collections::HashMap;
    use std::collections::hash_map::Entry::{Occupied, Vacant};
    pub struct StrGen {
        counter: HashMap<String, u64>
    }
    impl StrGen {
        pub fn generate(&mut self, prefix: &str) -> String {
            let count = match self.counter.entry(prefix.to_string()) {

                Vacant(x) => *x.insert(1),
                Occupied(mut x) => { 
                    let nextval = x.get() + 1; 
                    x.insert(nextval);
                    nextval
                }
            };
            format!("{}{}", prefix, count)
        }
    }
            
    pub fn generator() -> StrGen {
        StrGen { counter: HashMap::new() }
    }
}


