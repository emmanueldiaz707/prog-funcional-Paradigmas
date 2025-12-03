defmodule Parcial2 do

  # Escriba la función que tome como entrada una lista con sublistas de un solo nivel y una posición P,
  # y elimine de cada sublista los elementos que están en la posición P.

  # L = [[3, 8, 4, 2, 3], [1, 6, 3, 9, 8], [12, 15]]
  # P = 3       ^                ^
  # Resultado = [[3, 8, 2, 3], [1, 6, 9, 8], [12, 15]]

  def eliminarP([], _n), do: []
  def eliminarP([_x|xs], 1), do: xs
  def eliminarP([x|xs], p) do
    [x | eliminarP(xs, p-1)]
  end

  def eliminarPSublistas([], _p), do: []
  def eliminarPSublistas([x|xs], p) do
    [eliminarP(x, p) | eliminarPSublistas(xs, p)]
  end

end
