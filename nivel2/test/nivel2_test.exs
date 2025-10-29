defmodule Nivel2Test do
  use ExUnit.Case
  doctest Nivel2

  test "Ejercicio 4: n-potencia" do
    assert Nivel2.npotencia(5,0) == 1
    assert Nivel2.npotencia(5,1) == 5
    assert Nivel2.npotencia(5,2) == 25
    assert Nivel2.npotencia(5,5) == 3125
    assert Nivel2.npotencia(5,-3) == (1/5)*(1/5)*(1/5)
  end

  test "Ejercicio 5: cantidad de elementos de una lista" do
    assert Nivel2.cantidad([:a,:t,:e,:c]) == 4
  end

  test "Ejercicio 6: sumatoria de elementos de una lista" do
    assert Nivel2.sumatoria([1,2,3,4,5]) == 15
  end

  test "Ejercicio 7: i-ésimo elemento de una lista" do
    assert Nivel2.iesimo([:a,:b,:c,:d,:e],3) == :d
  end

  test "Ejercicio 8: eliminar i-ésimo elemento de una lista" do
    assert Nivel2.eliminariesimo([1,2,3,4,5],3) == [1,2,3,5]
  end

  test "Ejercicio 9: objeto pertenece a una lista" do
    assert Nivel2.existe(3,[1,2,3,4,5]) == true
    assert Nivel2.existe(8,[1,2,3,4,5]) == false
  end

  test "Ejercicio 10: media de una lista" do
    assert Nivel2.media([5,6,7]) == 6
  end

  test "Ejercicio 11: agregar elemento a una lista en posición dada" do
    assert Nivel2.agregar(9,[1,2,3,4,5],3) == [1,2,3,9,4,5]
  end
end
