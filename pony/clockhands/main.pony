use "collections"
use "format"

actor Main
  fun pad(n: USize): String =>
    Format.int[USize](n where width = 2, align = AlignRight, fill = 48)

  new create(env: Env) =>
    for i in Range(0, 11) do
      var t = ((43200 * i) + 21600) / 11
      var h = t / 3600
      var m = (t / 60) % 60
      var s = t % 60
      env.out.print(pad(if h == 0 then 12 else h end) + ":" + pad(m) + ":" + pad(s))
    end