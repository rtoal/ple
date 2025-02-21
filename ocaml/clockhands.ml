for i = 0 to 10 do
  let t = truncate ((float i +. 0.5) *. 43200.0 /. 11.0) in
  let (h, m, s) = (t / 3600, t / 60 mod 60, t mod 60) in
  Printf.printf ("%02d:%02d:%02d\n") (if h = 0 then 12 else h) m s
done;;