fun pad(n:int)
  pad-left(show(n), 2, '0')

fun main()
  for(0,10) fn(i)
    var t := (43200 * i + 21600) / 11
    var h := t / 3600
    var m := t / 60 % 60
    var s := t % 60 
    println(pad(if is-zero(h) then 12 else h) ++ ":" ++ pad(m) ++ ":" ++ pad(s))