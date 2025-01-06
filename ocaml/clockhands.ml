for i = 0 to 10 do
  let t = truncate ((float i +. 0.5) *. 43200.0 /. 11.0) in
  let h = t / 3600 in
  let m = t mod 3600 in
  Printf.printf ("%02d:%02d:%02d\n") (if h = 0 then 12 else h) (m / 60) (m mod 60)
done