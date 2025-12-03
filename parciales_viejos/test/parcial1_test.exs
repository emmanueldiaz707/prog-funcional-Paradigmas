defmodule Parcial1Test do
  use ExUnit.Case
  doctest Parcial1

  test "Parcial 1 - Ejercicio 1: lista con los elementos de L que están en las posiciones múltiplos de N" do
    assert Parcial1.listaElemMulN([4, 5, 9, 6, 12, 8, 6, 5, 4, 3, 2, 3, 5, 10], 3) == [9, 8, 4, 3]
  end

  test "Parcial 1 - Ejercicio 2: lista con iésimo elemento = sumatoria de elementos de nivel de profundiad i" do
    assert Parcial1.listaNivelN([1, [2, 3], [[4, 5], 6], [7, [8, [9]]]], 1) == [1]
    assert Parcial1.listaNivelN([1, [2, 3], [[4, 5], 6], [7, [8, [9]]]], 2) == [2,3,6,7]
    assert Parcial1.listaNivelN([1, [2, 3], [[4, 5], 6], [7, [8, [9]]]], 3) == [4,5,8]
    assert Parcial1.listaNivelN([1, [2, 3], [[4, 5], 6], [7, [8, [9]]]], 4) == [9]


    assert Parcial1.profMax([1,2,3,4]) == 1
    assert Parcial1.profMax([1,[1,2,3],3,[1,2,3]]) == 2
    assert Parcial1.profMax([[1,2],2,[1,2,3,[1,2]],4]) == 3
    assert Parcial1.profMax([1,[1,[1,2,[1,2,3]],3],3,4]) == 4
    assert Parcial1.profMax([1,2,3,4, [[[1]]]]) == 4
  #  assert Parcial1.profMax([]) == 0

    assert Parcial1.sumatoriaProfI([1, [2, 3], [[4, 5], 6], [7, [8, [9]]]]) == [1, 18, 17, 9]
    assert Parcial1.sumatoriaProfI([1, [2, 3], [[4, 5], 6], [7, [8, [9, [[5]]]]]]) == [1, 18, 17, 9, 0, 5]
  end
end
