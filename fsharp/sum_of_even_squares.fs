let sum_of_even_squares a =
    a
    |> List.filter (fun x -> x % 2 = 0)
    |> List.sumBy (fun x -> x * x)

assert(sum_of_even_squares [] = 0)
assert(sum_of_even_squares [7] = 0)
assert(sum_of_even_squares [7; 13; -8; 8; 1; 0; 11; 2] = 132)
printfn "All tests passed"
