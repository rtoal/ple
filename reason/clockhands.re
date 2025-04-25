for (i in 0 to 10) {
  let t = (43200 * i + 21600) / 11;
  let h = t / 3600;
  let m = t / 60 mod 60;
  let s = t mod 60;
  Printf.printf("%02d:%02d:%02d\n", h == 0 ? 12 : h, m, s);
};