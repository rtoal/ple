Animal := Object clone
Animal withName := method(name, do(self name := name; self))
Animal speak := method(writeln(self name, " says ", self sound))

Horse := Animal clone
Horse sound := "neigh"

cj := Horse clone withName("CJ")
cj speak
