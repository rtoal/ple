use "collections"
use "format"

actor Main
  fun pad(n: USize): String =>
    Format.int[USize](n where width = 2, align = AlignRight, fill = 48)

  new create(env: Env) =>
    for i in Range(0, 11) do
      var t: USize = ((43200 * i) + 21600) / 11
      var h: USize = t / 3600
      var m: USize = (t / 60) % 60
      var s: USize = t % 60
      if h == 0 then
        h = 12
      end
      env.out.print(pad(h) + ":" + pad(m) + ":" + pad(s))
    end