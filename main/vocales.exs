defmodule Vocales do
  def main do
    IO.puts("Solución 1 (convirtiendo a lista de caracteres)")
    IO.puts("  Hola Mundo -> #{contarComoLista("Hola Mundo")}")
    IO.puts("  murciélago -> #{contarComoLista("murciélago")}")
    IO.puts("  xyz -> #{contarComoLista("xyz")}")

    IO.puts("Solución 2 (recorriendo el texto directamente)")
    IO.puts("  Hola Mundo -> #{contarDirectamente("Hola Mundo")}")
    IO.puts("  murciélago -> #{contarDirectamente("murciélago")}")
    IO.puts("  xyz -> #{contarDirectamente("xyz")}")
  end

  def contarComoLista(cadena) do
    contarLista(String.graphemes(cadena))
  end

  defp contarLista([]) do
    0
  end

  defp contarLista([letra | resto]) do
    if esVocal(letra) do
      1 + contarLista(resto)
    else
      contarLista(resto)
    end
  end

  def contarDirectamente("") do
    0
  end

  def contarDirectamente(cadena) do
    letra = String.first(cadena)
    resto = String.slice(cadena, 1, String.length(cadena))

    if esVocal(letra) do
      1 + contarDirectamente(resto)
    else
      contarDirectamente(resto)
    end
  end

  defp esVocal(letra) do
    vocales = ["a", "e", "i", "o", "u", "á", "é", "í", "ó", "ú"]
    String.downcase(letra) in vocales
  end
end

Vocales.main()
