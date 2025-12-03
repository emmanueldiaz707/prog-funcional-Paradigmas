defmodule Parcial2Test do
  use ExUnit.Case
  doctest Parcial2

  test "Parcial 1, ejercicio 1: " do
    assert Parcial2.eliminarP([1,2,3,4,5,6,7,8], 5) == [1,2,3,4,6,7,8]
    assert Parcial2.eliminarPSublistas([[3, 8, 4, 2, 3], [1, 6, 3, 9, 8], [12, 15]], 3) == [[3, 8, 2, 3], [1, 6, 9, 8], [12, 15]]
  end

end
