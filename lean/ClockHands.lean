def printTimes : List (IO Unit) → IO Unit
  | [] => pure ()
  | act :: actions => do
    printTimes actions
    act

def pad : Nat → String
  | n + 10 => s!"{n + 10}"
  | n => s!"0{n}"

def clock (t : Nat) : String :=
  s!"{pad (if t / 3600 == 0 then 12 else t / 3600)}:{pad (t / 60 % 60)}:{pad (t % 60)}"

def countdown : Nat → List (IO Unit)
  | 0 => []
  | n + 1 => IO.println (clock ((43200 * (n) + 21600) / 11)) :: countdown n

def main : IO Unit := printTimes (countdown 11)
