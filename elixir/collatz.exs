defmodule Collatz do
  def steps(n, count \\ 0) do
    cond do
      n == 1 -> count
      rem(n, 2) == 0 -> steps div(n, 2), count + 1
      true -> steps 3 * n + 1, count + 1
    end
  end
end

if length(System.argv) != 1 do
  IO.puts "Exactly one command line argument required"
else
  case System.argv |> hd |> Integer.parse do
    :error -> IO.puts "Integer command line required"
    {n, _} -> IO.puts Collatz.steps(n)
  end
end
