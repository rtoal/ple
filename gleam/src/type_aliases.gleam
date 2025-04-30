pub type Name = String
pub type EmployeeId = Int

pub fn main() {
  let employee: Name = "John"
  let id: EmployeeId = 3243296

  let string_type: String = "John"
  let int_type: Int = 3243296

  echo string_type == employee
  echo int_type == id 
}