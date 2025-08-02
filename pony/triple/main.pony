use "collections"

actor Main
  new create(env: Env) =>
    for c in Range(0, 41) do
      for b in Range(0, c) do
        for a in Range(0, b) do
          if ((a * a) + (b * b)) == (c * c) then
            env.out.print(a.string() + ", " + b.string() + ", " + c.string())
          end
        end
      end
    end