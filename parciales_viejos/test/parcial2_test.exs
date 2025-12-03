defmodule Parcial2Test do
  use ExUnit.Case
  doctest Parcial2

  test "Parcial 2, ejercicio 1" do
    assert Parcial2.eliminarP([1,2,3,4,5,6,7,8], 5) == [1,2,3,4,6,7,8]
    assert Parcial2.eliminarPSublistas([[3, 8, 4, 2, 3], [1, 6, 3, 9, 8], [12, 15]], 3) == [[3, 8, 2, 3], [1, 6, 9, 8], [12, 15]]
  end



  test "Parcial 2, ejercicio 2: Máximo" do
    assert Parcial2.maximo([1,7,9,5,1]) == 9
    assert Parcial2.maximo([1]) == 1
  end
  test "Parcial 2, ejercicio 2: Incluye" do
    assert Parcial2.incluye([1,2,3,4], 5) == false
    assert Parcial2.incluye([1,2,3,4], 2) == true
  end
  test "Parcial 2, ejercicio 2: Secuencia aritmética" do
    assert Parcial2.secArit([3,2], 20, [4,6,4,10,3,2,5,18,19]) == [3,5,19]
    assert Parcial2.secArit([3,-2], 20, [4,6,4,10,3,2,5,18,19]) == []
  end
  test "Parcial 2, ejercicio 2: Secuencia aritmética para [3,2]" do
    assert Parcial2.secArit([3, 2], 10, [4, 6, 4, 10, 3, 2, 5]) == [3,5]
  end
  test "Parcial 2, ejercicio 2: Secuencia aritmética para [6,0]" do
    assert Parcial2.secArit([6, 0], 10, [4, 6, 4, 10, 3, 2, 5]) == [6]
  end
  test "Parcial 2, ejercicio 2: Secuencia aritmética para [12,3]" do
    assert Parcial2.secArit([12, 3], 10, [4, 6, 4, 10, 3, 2, 5]) == []
  end
  test "Parcial 2, ejercicio 2: Secuencia aritmética para [7,1]" do
    assert Parcial2.secArit([7, 1], 10, [4, 6, 4, 10, 3, 2, 5]) == [10]
  end

  test "Parcial 2, ejercicio 2" do
    assert Parcial2.listaSecArit([[3, 2], [6, 0], [12, 3], [7, 1]], [4, 6, 4, 10, 3, 2, 5]) == [[3, 5], [6], [], [10]]
  end

end
