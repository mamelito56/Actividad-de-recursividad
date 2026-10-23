defmodule MayorLista do
  def main do
    lista = [3, 8, 1, 9, 4]
    mayor = mayorLista(lista, 0, length(lista) - 1)
    IO.puts("El número mayor es: #{mayor}")
  end

  def mayorLista([], _inicio, _fin) do
    nil
  end

  def mayorLista(lista, inicio, fin) when inicio == fin do
    Enum.at(lista, inicio)
  end

  def mayorLista(lista, inicio, fin) do
    mitad = div(inicio + fin, 2)

    izquierda = mayorLista(lista, inicio, mitad)
    derecha = mayorLista(lista, mitad + 1, fin)

    if izquierda > derecha do
      izquierda
    else
      derecha
    end
  end
end

MayorLista.main()
