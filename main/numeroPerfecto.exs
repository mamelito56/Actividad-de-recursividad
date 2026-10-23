defmodule NumeroPerfecto do
  def main do
    IO.puts("6 es perfecto: #{esPerfecto(6)}")
    IO.puts("28 es perfecto: #{esPerfecto(28)}")
    IO.puts("496 es perfecto: #{esPerfecto(496)}")
    IO.puts("12 es perfecto: #{esPerfecto(12)}")
    IO.puts("1 es perfecto: #{esPerfecto(1)}")
  end

  def esPerfecto(n) when n < 2 do
    false
  end

  def esPerfecto(n) do
    sumarDivisores(n, 1, 0) == n
  end

  defp sumarDivisores(n, divisor, suma) when divisor > div(n, 2) do
    suma
  end

  defp sumarDivisores(n, divisor, suma) when rem(n, divisor) == 0 do
    sumarDivisores(n, divisor + 1, suma + divisor)
  end

  defp sumarDivisores(n, divisor, suma) do
    sumarDivisores(n, divisor + 1, suma)
  end
end

NumeroPerfecto.main()
