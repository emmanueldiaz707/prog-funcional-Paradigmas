defmodule Nivel5Test do
  use ExUnit.Case
  doctest Nivel5

  test "Ejercicio 44: eliminar N nros más cercanos al promedio de lista" do
    assert Nivel5.eliminarNCercProm([1,6,34,2,3,55,4,1,12], 5) == [1,34,55,1]
  end
end
