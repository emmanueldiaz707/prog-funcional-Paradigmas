defmodule Nivel4Test do
  use ExUnit.Case
  doctest Nivel4

  test "Ejercicio 39: contar elementos de lista que cumplen la condicion" do
    assert Nivel4.cantidad_de([1,2,3,4,5], fn x -> rem(x,2) == 0 end) == 2
    assert Nivel4.cantidad_de([1,2,3,4,5], fn x -> x < 0 end) == 0
  end
end
