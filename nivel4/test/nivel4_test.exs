defmodule Nivel4Test do
  use ExUnit.Case
  doctest Nivel4

  test "Ejercicio 39: contar elementos de lista que cumplen la condicion" do
    assert Nivel4.cantidad_de([1,2,3,4,5], fn x -> rem(x,2) == 0 end) == 2
    assert Nivel4.cantidad_de([1,2,3,4,5], fn x -> x < 0 end) == 0
  end

  test "Ejercicio 40: sumatoria de elementos de lista que cumplen la condicion" do
    assert Nivel4.sumatoria_cond([1,2,3,4,5,6], fn x -> rem(x,2) == 0 end) == 12
    assert Nivel4.sumatoria_cond([1,2,3,4,5,6], fn x -> x > 3 end) == 15
  end

  test "Ejecicio 41: lista de elementos que cumplen la condicion" do
    assert Nivel4.select([1,2,3,4,5,6,7,8,9], fn x -> rem(x,2) == 0 end) == [2,4,6,8]
    assert Nivel4.select([1,2,3,4,5,6,7,8,9], fn x -> x < 4 end) == [1,2,3]
  end
end
