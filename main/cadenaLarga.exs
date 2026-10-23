defmodule CadenaLarga do
  def main do
    palabras = ["sol", "computador", "elixir", "recursividad", "pila"]
    IO.puts("Lista: #{inspect(palabras)}")
    IO.puts("La cadena más larga es: #{masLarga(palabras)}")

    otras = ["casa", "árbol", "mar"]
    IO.puts("Lista: #{inspect(otras)}")
    IO.puts("La cadena más larga es: #{masLarga(otras)}")
  end

  def masLarga([]) do
    nil
  end

  def masLarga([cadena]) do
    cadena
  end

  def masLarga([cabeza | cola]) do
    masLargaCola = masLarga(cola)

    if String.length(cabeza) >= String.length(masLargaCola) do
      cabeza
    else
      masLargaCola
    end
  end
end

CadenaLarga.main()
