let generatePermutations (a : array<char>) n =
    let rec loop (a : array<char>) n =
        let mutable word = a
        match n with
        | 0 -> printfn "%s" (new string(word))
        | n -> do
            for i = 0 to n-1 do
                loop a (n-1)
                let j = if n % 2 = 0 then 0 else i
                let temp = word[j]
                word[j] <- word[n]
                word[n] <- temp
            loop word (n-1)
    loop a n
        
let input = System.Console.ReadLine().Split[|' '|]
if input.Length <> 1 then
    raise (System.ArgumentException("Expected exactly 1 argument."))
generatePermutations (Seq.toArray input[0]) (input[0].Length - 1)