# A line by line translation of the Erlang version
defmodule Primes do
  def main() do
    max = 1000

    2..max
    |> Enum.each(fn n ->
      spawn(__MODULE__, :is_prime, [n, self()])
    end)

    wait(max - 1)
  end

  defp wait(0), do: IO.puts("")
  defp wait(n) do
    receive do
      _ -> wait(n - 1)
    end
  end

  def is_prime(n, observer) do
    check = fn check_fun, d ->
      cond do
        d * d > n ->
          IO.write("#{n} ")
          send(observer, true)

        rem(n, d) == 0 ->
          send(observer, false)

        true ->
          check_fun.(check_fun, d + 1)
      end
    end

    check.(check, 2)
  end
end

Primes.main()
