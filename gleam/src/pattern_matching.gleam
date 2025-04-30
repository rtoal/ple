import gleam/int

// Currently unicode character is not supported in grammar :(
pub type FrenchMonth {
  Janvier
  Fevrier
  Mars
  Avril
  Mai
  Juin
  Juillet
  Aout 
  Septembre
  Octobre
  Novembre
  Decembre
}

pub fn main() {
  let month1 = Aout
  let month2 = Novembre
  let month3 = Fevrier
  echo "This month most likely has " <> int.to_string(get_total_days(month1)) <> " days."
  echo "This month most likely has " <> int.to_string(get_total_days(month2)) <> " days."
  echo "This month most likely has " <> int.to_string(get_total_days(month3)) <> " days."
}

pub fn get_total_days(month) {
  case month {
    Janvier | Mars | Mai | Juillet | Aout | Octobre | Decembre -> 31
    Avril | Juin | Septembre | Novembre -> 30
    Fevrier -> 28
  }
}