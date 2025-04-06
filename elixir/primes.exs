defmodule Primes do
  def print_if_prime(n) do
    if is_prime?(n), do: IO.write("#{n} ")
  end

  defp is_prime?(n) when n <= 1, do: false
  defp is_prime?(2), do: true
  defp is_prime?(n) do
    2..n
    |> Stream.take_while(&(&1 * &1 <= n))
    |> Enum.all?(&(rem(n, &1) != 0))
  end
end

2..1000
|> Task.async_stream(
    &Primes.print_if_prime/1,
    max_concurrency: System.schedulers_online(),
    ordered: false)
|> Stream.run()
