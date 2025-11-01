defmodule Nivel3Test do
  use ExUnit.Case
  doctest Nivel3

  test "Ejercicio 19: i-esimo nro perfecto" do
    assert Nivel3.iesimoPerfecto(1) == 6
    assert Nivel3.iesimoPerfecto(2) == 28
    assert Nivel3.iesimoPerfecto(3) == 496
    assert Nivel3.iesimoPerfecto(4) == 8128
  end

  test "Es primo (para ejercicio 20)" do
    assert Nivel3.esPrimo(2) == true
    assert Nivel3.esPrimo(3) == true
    assert Nivel3.esPrimo(4) == false
    assert Nivel3.esPrimo(5) == true
    assert Nivel3.esPrimo(6) == false
    assert Nivel3.esPrimo(7) == true
    assert Nivel3.esPrimo(8) == false
    assert Nivel3.esPrimo(9) == false
    assert Nivel3.esPrimo(10) == false
    assert Nivel3.esPrimo(11) == true
  end

  test "Buscar primo (para ejercicio 20)" do
#    assert Nivel3.buscarSiguientePrimo(14) == 17
 #   assert Nivel3.buscarSiguientePrimo(200) == 211
  #  assert Nivel3.buscarSiguientePrimo(294) == 307
   # assert Nivel3.buscarSiguientePrimo(3) == 3
  end

  test "Ejercicio 20: lista de n primeros primos" do
    assert Nivel3.nPrimos(1) == [2]
    assert Nivel3.nPrimos(2) == [2,3]
    assert Nivel3.nPrimos(3) == [2,3,5]
    assert Nivel3.nPrimos(4) == [2,3,5,7]
    assert Nivel3.nPrimos(5) == [2,3,5,7,11]
    assert Nivel3.nPrimos(6) == [2,3,5,7,11,13]
    assert Nivel3.nPrimos(7) == [2,3,5,7,11,13,17]
    assert Nivel3.nPrimos(8) == [2,3,5,7,11,13,17,19]
    assert Nivel3.nPrimos(9) == [2,3,5,7,11,13,17,19,23]
    assert Nivel3.nPrimos(10) == [2,3,5,7,11,13,17,19,23,29]
    assert Nivel3.nPrimos(12) == [2,3,5,7,11,13,17,19,23,29,31,37]
  end

  test "Ejercicio 21: varianza de lista" do
    assert Nivel3.varianza([1,2,3,4,5]) ==  2.5
    assert Nivel3.varianza([2,6,1,8,7,5,9,6,7,4]) == 6.5
    assert Nivel3.varianza([10,10,4,1,7,7,3,5,8,10]) == 10.055555555555555
  end

end
