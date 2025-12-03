defmodule Parcial1Test do
  use ExUnit.Case
  doctest Parcial1

  test "Parcial 1 - Ejercicio 1: lista con los elementos de L que están en las posiciones múltiplos de N" do
    assert Parcial1.listaElemMulN([4, 5, 9, 6, 12, 8, 6, 5, 4, 3, 2, 3, 5, 10], 3) == [9, 8, 4, 3]
  end



end
