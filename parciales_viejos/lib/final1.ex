defmodule Final1 do


  # Escriba una función que tome como entrada una lista con sublistas L
  # y reordene los elementos de la lista principal y cada sublista
  # de tal manera que queden todos los números al principio
  # y las listas al final (de la lista y cada sublista).

  # L = [2, 8, [3, 1], 2, [7, 3, 10, [4, 2], 9, [1]], 4]
  # R = [2, 8, 2, 4, [3, 1], [7, 3, 10, 9, [4, 2], [1]]]

  def numeros(lista) do
    Enum.filter(lista, fn x -> is_number(x) end)
  end

  def sublistas(lista) do
    Enum.filter(lista, fn x -> is_list(x) end)
  end

  def reordenar([]), do: []
  def reordenar(lista) do
    numeros(lista) ++ Enum.map(sublistas(lista), fn sublista -> reordenar(sublista) end)
  end
end
