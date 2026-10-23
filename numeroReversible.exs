defmodule NumeroReversible do
  def main do
    IO.puts("36 -> #{mostrar(esReversible(36))}")
    IO.puts("409 -> #{mostrar(esReversible(409))}")
    IO.puts("19 -> #{mostrar(esReversible(19))}")
    IO.puts("10 -> #{mostrar(esReversible(10))}")
    grande1 = 11111111112222222222
    grande2 = 98765432109876543211
    IO.puts("11111111112222222222 -> #{mostrar(esReversible(grande1))}")
    IO.puts("98765432109876543211 -> #{mostrar(esReversible(grande2))}")
    IO.puts("-5 -> #{mostrar(esReversible(-5))}")
    IO.puts("3.5 -> #{mostrar(esReversible(3.5))}")
  end

  def esReversible(n) when not is_integer(n) or n < 1 do
    {:error, "el número debe ser un entero positivo"}
  end

  def esReversible(n) when rem(n, 10) == 0 do
    false
  end

  def esReversible(n) do
    todosImpares(n + invertir(n, 0))
  end

  defp invertir(0, invertido) do
    invertido
  end

  defp invertir(n, invertido) do
    invertir(div(n, 10), invertido * 10 + rem(n, 10))
  end

  defp todosImpares(0) do
    true
  end

  defp todosImpares(n) do
    rem(rem(n, 10), 2) == 1 and todosImpares(div(n, 10))
  end

  defp mostrar({:error, mensaje}) do
    "inválido: #{mensaje}"
  end

  defp mostrar(resultado) do
    "es reversible: #{resultado}"
  end
end

NumeroReversible.main()
