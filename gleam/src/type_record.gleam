pub type Spaceship {
  Rocket(name: String, weight: Float, fuel_capacity: Float)
  Ufo(name: String, weight: Float, fuel_capacity: Float)
  Spaceshuttle(name: String, weight: Float, fuel_capacity: Float)
}

pub fn main() {
  let rocket = Rocket(name: "Odyssey", weight: 234.53, fuel_capacity: 593.34) 
  let ufo = Ufo(name: "Odyssey", weight: 123.6, fuel_capacity: 0.0) 

  let first_spaceshuttle = 
    Spaceshuttle(name: "StarReacher 11", weight: 726.36, fuel_capacity: 1571.34)
  let second_spaceshuttle = 
    Spaceshuttle(..first_spaceshuttle, name: "StarReacher 16")

  echo rocket
  echo ufo
  echo first_spaceshuttle
  echo second_spaceshuttle
}