let generatePermutations (a : array<string>) n =
    let rec loop (a : array<string>) n =
        let mutable phrase = a
        match n with
        | 0 -> printfn "%s" (String.concat "\t" phrase)
        | n -> do
            for i = 0 to n-1 do
                loop a (n-1)
                let j = if n % 2 = 0 then 0 else i
                let temp = phrase[j]
                phrase[j] <- phrase[n]
                phrase[n] <- temp
            loop phrase (n-1)
    loop a n
        
let input = System.Console.ReadLine().Split[|' '|]
if input.Length = 0 then
    raise (System.ArgumentException("Expected at least 1 argument."))
generatePermutations (input) (input.Length - 1)