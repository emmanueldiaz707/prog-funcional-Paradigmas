defmodule Parcial1 do

  # Escriba una función que tome como entrada una lista sin sublistas L y un número N,
  # y devuelva una lista con los elementos de L que están en las posiciones múltiplos de N.

  def listaElemMulN(lista, n),  do: listaElemMulN(lista, n, n)

  def listaElemMulN([], _n, _cont), do: []
  def listaElemMulN([x|xs], n, 1) do
    [x | listaElemMulN(xs, n, n)]
  end
  def listaElemMulN([_x|xs], n, cont), do: listaElemMulN(xs, n, cont-1)

end
