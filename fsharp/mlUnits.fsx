// Centimeters
[<Measure>] type cm
// Milliliters
[<Measure>] type ml = cm^3
// Liters
[<Measure>] type L

let mlPerLiter : float<ml/L> = 1000.0<ml/L>
let literPerMl : float<L/ml> = 1.0<L/ml>
let mlPerCubicCentimeter : float<ml/cm^3> = 1.0<ml/cm^3>
let cubicCentimeterPerMl : float<cm^3/ml> = 1.0<cm^3/ml>

printfn "There are %0.2f milliliters per %0.2f liter" mlPerLiter literPerMl    
printfn "%0.2f milliliter is also %0.2f cubic centimeter" mlPerCubicCentimeter cubicCentimeterPerMl
