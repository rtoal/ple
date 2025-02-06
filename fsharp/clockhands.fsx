for i = 0 to 10 do
    let t = (43200 * i + 21600) / 11
    let (h, m, s) = (t / 3600, t / 60 % 60, t % 60)
    printfn "%02d:%02d:%02d" (if h = 0 then 12 else h) m s