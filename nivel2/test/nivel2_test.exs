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

  test "Ejercicio 12: agregar elemento a una lista ordenada donde corresponda" do
    assert Nivel2.agregarOrdenada(9,[1,5,10,15]) == [1,5,9,10,15]
    assert Nivel2.agregarOrdenada(0,[1,5,10,15]) == [0,1,5,10,15]
    assert Nivel2.agregarOrdenada(20,[1,5,10,15]) == [1,5,10,15,20]
  end

  test "Ejercicio 13: calcular sumatoria de las 3 primeras potencias de un nro" do
    assert Nivel2.sumaTresPotencias(3) == 3+9+27
    assert Nivel2.sumaTresPotencias(0) == 0
    assert Nivel2.sumaTresPotencias(1) == 3
    assert Nivel2.sumaTresPotencias(5) == 5+25+125
  end

  test "Ejercicio 14: ocurrencias de un elemento en lista y lista sin elemento" do
    assert Nivel2.listaSinElem([1,2,3,4,5,1,2,3,4,5,1,2,3,4,5],3) == [1,2,4,5,1,2,4,5,1,2,4,5]
  end

  test "Ejercicio 15: lista con instancias de un elemento reemplazadas por el otro" do
    assert Nivel2.reemplazo([1,2,3,4,5,1,2,3,4,5],3,9) == [1,2,9,4,5,1,2,9,4,5]
  end

  test "Ejercicio 16: minimo de una lista" do
    assert Nivel2.minimo([5,2,8,10,4,7,9,3]) == 2
  end

  test "Ejercicio 17: maximo de una lista" do
    assert Nivel2.maximo([5,2,8,10,4,7,9,3]) == 10
  end

  test "Ejercicio 18: terna con promedio, máximo y mínimo de una lista" do
    assert Nivel2.promMaxMin([1,4,7,2,6,8]) == [28/6,1,8]
  end

end
