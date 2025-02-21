def printTimes : List (IO Unit) → IO Unit
  | [] => pure ()
  | doPrint :: printStatements => do
    printTimes printStatements
    doPrint

def pad : Nat → String
  | n + 10 => s!"{n + 10}"
  | n => s!"0{n}"

def clock (t : Nat) : String :=
  s!"{pad (if t / 3600 == 0 then 12 else t / 3600)}:{pad (t / 60 % 60)}:{pad (t % 60)}"

def countdown : Nat → List (IO Unit)
  | 0 => []
  | i + 1 => IO.println (clock ((43200 * i + 21600) / 11)) :: countdown i

def main : IO Unit := printTimes (countdown 11)
