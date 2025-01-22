for i = 0 to 10 do
    let t = int ((float i + 0.5) * 43200.0 / 11.0)
    let (h, m, s) = (t / 3600, t / 60 % 60, t % 60)
    printfn "%02d:%02d:%02d" (if h = 0 then 12 else h) m s