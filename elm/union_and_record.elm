type Person
  = Person { name : String, id : Int }
type Widget
  = Widget { name : String, id : Int }

p : Person
p = Person { name = "Alice", id = 239 }
-- We now cannot say
-- w : Widget
-- w = p
