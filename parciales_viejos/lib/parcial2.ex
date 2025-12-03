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



  # Escriba la función que tome como entrada una lista de pares ordenados y una lista de números (sin sublistas),
  # y devuelva otra lista que contenga una sublista por cada par, donde cada sublista incluya los elementos de
  # la lista de números que pertenecen a la secuencia aritmética definida por dicho par.
  # Cada par (A, S) define una secuencia que comienza en A y aumenta en S unidades cada paso (A, A+S, A+2S, ...).
  # Si S es negativo, la sublista correspondiente debe estar vacía.
  # Cada número puede aparecer en múltiples sublistas o en ninguna.
  # Los elementos en cada sublista deben mantener el orden de aparición en la lista original.

  # Lista de pares = [[3, 2], [6, 0], [12, 3], [7, 1]]
  # Lista de números = [4, 6, 4, 10, 3, 2, 5]
  # Resultado = [[3, 5], [6], [], [10]]

  def maximo(lista), do: maximo(lista, hd(lista))
  def maximo([], mayor), do: mayor
  def maximo([x|xs], mayor) do
    cond do
      x > mayor -> maximo(xs, x)
      true -> maximo(xs, mayor)
    end
  end

  def incluye([], _elem), do: false
  def incluye([x|xs], elem) do
    cond do
      x == elem -> true
      true -> incluye(xs, elem)
    end
  end

  def secArit([a, s], maximo, nros) do
    cond do
      s < 0 -> []
      a <= maximo ->
        incl = incluye(nros,a)
        cond do
          incl and s>0 -> [a | secArit([a+s, s], maximo, nros)]
          incl -> [a]
          s==0 -> []
          true -> secArit([a+s, s], maximo, nros)
        end
      true -> []
    end
  end

  def listaSecArit([], _nros), do: []
  def listaSecArit([x|xs], nros) do
    [secArit(x, maximo(nros), nros) | listaSecArit(xs, nros)]
  end

end
