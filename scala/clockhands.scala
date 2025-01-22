@main def clockhands() =
  for i <- 0 to 10 do
    val t = (43200 * i + 21600) / 11
    val h = t / 3600
    val m = t / 60 % 60
    val s = t % 60
    println(f"${if (h == 0) then 12 else h}%02d:${m}%02d:${s}%02d")