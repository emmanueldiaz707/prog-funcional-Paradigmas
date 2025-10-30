defmodule Nivel3Test do
  use ExUnit.Case
  doctest Nivel3

  test "Ejercicio 19: i-esimo nro perfecto" do
    assert Nivel3.iesimoPerfecto(1) == 6
    assert Nivel3.iesimoPerfecto(2) == 28
    assert Nivel3.iesimoPerfecto(3) == 496
    assert Nivel3.iesimoPerfecto(4) == 8128
  end
end
