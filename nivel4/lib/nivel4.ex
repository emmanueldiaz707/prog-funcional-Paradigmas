defmodule Nivel4 do

  # 39. Escriba una función llamada "Cantidad-de" que toma como argumentos una lista y una condición (función), y devuelve la cantidad de elementos de la lista que cumplen con dicha condición.
  def cantidad_de([],_condicion), do: 0
  def cantidad_de([x|xs], condicion) do
    cond do
      condicion.(x) -> 1 + cantidad_de(xs,condicion)
      true -> cantidad_de(xs,condicion)
    end
  end




  # 40. Defina una función que tome una lista de números y una condición (función) como parámetros y devuelva la sumatoria de los elementos que cumplen dicha condición.

  def sumatoria_cond([],_condicion), do: 0
  def sumatoria_cond([x|xs], condicion) do
    cond do
      condicion.(x) -> x + sumatoria_cond(xs,condicion)
      true -> sumatoria_cond(xs,condicion)
    end
  end


  # 41. Defina una función llamada “Select” que devuelva la lista de elementos que cumplen con una determinada condición.

  def select([], _condicion), do: []
  def select([x|xs], condicion) do
    cond do
      condicion.(x) -> [x | select(xs,condicion)]
      true -> select(xs,condicion)
    end
  end


  # 42. Defina una función llamada “Map” o “Collect” que devuelva la lista de los resultados de aplicar una función que se pasa como parámetro a cada elemento de la lista de entrada.

  def collect([], _operacion), do: []
  def collect([x|xs], operacion) do
    [operacion.(x) | collect(xs,operacion)]
  end


  # 43. Escriba una función llamada “intercalar-según” que tome dos listas y una función como entrada,
  # y construya una nueva lista resultado de intercalar las dos primeras en el orden establecido por la función
  # (es decir, que la función se aplica a los dos elementos que se comparan en cada momento para determinar cuál es el mayor).

  def intercalar_segun(lista_x, [], _condicion), do: lista_x
  def intercalar_segun([], lista_y, _condicion), do: lista_y
  def intercalar_segun([x|xs], [y|ys], condicion)
  cond do
    condicion.(x,y) -> [x, y | intercalar_segun(xs,ys,condicion)]
    true -> [y, x | intercalar_segun(xs,ys,condicion)]
  end

  # No sé si está bien
end
