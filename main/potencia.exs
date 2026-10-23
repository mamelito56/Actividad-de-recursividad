defmodule Potencia do
  def main do
    IO.puts("16 es potencia de 2: #{esPotencia(16, 2)}")
    IO.puts("64 es potencia de 4: #{esPotencia(64, 4)}")
    IO.puts("50 es potencia de 10: #{esPotencia(50, 10)}")
    IO.puts("81 es potencia de 3: #{esPotencia(81, 3)}")
    IO.puts("20 es potencia de 3: #{esPotencia(20, 3)}")
  end

  def esPotencia(n, b) when n < 1 or b < 2 do
    false
  end

  def esPotencia(1, _b) do
    true
  end

  def esPotencia(n, b) when rem(n, b) != 0 do
    false
  end

  def esPotencia(n, b) do
    esPotencia(div(n, b), b)
  end
end

Potencia.main()
