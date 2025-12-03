defmodule Parcial1 do

  # Escriba una función que tome como entrada una lista sin sublistas L y un número N,
  # y devuelva una lista con los elementos de L que están en las posiciones múltiplos de N.

  def listaElemMulN(lista, n),  do: listaElemMulN(lista, n, n)

  def listaElemMulN([], _n, _cont), do: []
  def listaElemMulN([x|xs], n, 1) do
    [x | listaElemMulN(xs, n, n)]
  end
  def listaElemMulN([_x|xs], n, cont), do: listaElemMulN(xs, n, cont-1)




  # Dada una lista con sublistas L, devolver una lista donde el iésimo elemento
  # representa la sumatoria de los números contenidos en nivel i de profunidad de L.
  # Si no hay elementos numéricos en un nivel específico, ese nivel tendrá valor 0 en la lista resultante.

  # L = [1, [2, 3], [[4, 5], 6], [7, [8, [9]]]]
  # Resultado = [1, 18, 17, 9]

  # Sumatoria de elementos de una lista
  def sumatoria([]), do: 0
  def sumatoria([x|xs]) do
    x + sumatoria(xs)
  end

  # Máxima profundidad de lista
  def profMax([]), do: 1
  def profMax([x|xs]) do
    cond do
      is_list(x) ->
        profCab = 1 + profMax(x)
        profCol = profMax(xs)
        cond do
          profCab > profCol -> profCab
          true -> profCol
        end
      true -> profMax(xs)
    end
  end


  # Obtener lista con todos los elementos de nivel de profundidad n
  def listaNivelN([], _n), do: []
  def listaNivelN([x|xs], 1) do
    cond do
      is_list(x) -> listaNivelN(xs, 1)
      true -> [x | listaNivelN(xs, 1)]
    end
  end
  def listaNivelN([x|xs], n) do
    cond do
      is_list(x) -> listaNivelN(x, n-1) ++ listaNivelN(xs, n)
      true -> listaNivelN(xs, n)
    end
  end

  # Construir lista con sumatorias
  def sumatoriaProfI(lista), do: sumatoriaProfI(lista, 1, profMax(lista))
  def sumatoriaProfI(_lista, _i, 0), do: []
  def sumatoriaProfI(lista, i, p) do
    [sumatoria(listaNivelN(lista, i)) | sumatoriaProfI(lista, i+1, p-1)]
  end
end
