// Kilograms
[<Measure>] type kg
// Pounds
[<Measure>] type lb

let poundsPerKilogram : float<lb kg^-1> = 2.20462<lb/kg>
let convertPoundsToKilograms (x : float<lb>) = x / poundsPerKilogram
let pounds x = x * 1.0<lb>

printfn "Please enter a weight in pounds."
let input = System.Console.ReadLine()
let parsedOk, floatValue = System.Double.TryParse(input)
if parsedOk
   then
      printfn "That weight in pounds is equal to %0.3f kg" (convertPoundsToKilograms(pounds floatValue))
   else
      printfn "Error parsing input."
