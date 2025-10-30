defmodule Nivel2 do

  # 4.	Defina una función que calcule la enésima potencia de un número.
  def npotencia(x,n) do
    cond do
      n == 1 -> x
      n == 0 -> 1
      n < 0 -> (1 / x) * npotencia(x,n+1)
      true -> x * npotencia(x,n-1)
    end
  end



  # 5. Escriba una función llamada “Cantidad” que devuelva la cantidad de elementos de una lista.
  def cantidad(([])) do
    0
  end

  def cantidad([_|xs]) do
    1 + cantidad(xs)
  end





  # 6.	Escriba una función llamada “Sumatoria” que devuelva la suma de elementos de una lista.
  def sumatoria([]) do
    0
  end

  def sumatoria([x|xs]) do
    x + sumatoria(xs)
  end


  # 7.	Realice una función que devuelva el i-ésimo elemento de una lista.
  # Considero a i=0 como el primer elemento
  def iesimo([x|_xs],0) do
    x
  end
  def iesimo([_x|xs],i) do
    iesimo(xs,i-1)
  end



  # 8.	Elimine el i-ésimo elemento de una lista.
  def eliminariesimo([], _i) do
    []
  end
  def eliminariesimo([_|xs], 0) do
    xs
  end
  def eliminariesimo([x|xs], i) do
    [x | eliminariesimo(xs, i-1)]
  end



  # 9.	Escriba una función llamada “Existe” que indique si un objeto se encuentra dentro de una lista determinada.
  def existe(_o,[]) do
    false
  end
  def existe(o,[x|xs]) do
    o == x or existe(o, xs)
  end


  # 10.	Escriba una función que determine la Media de una lista de números.
  def media([]) do
    0
  end
  def media(x) do
    Nivel2.sumatoria(x)/Nivel2.cantidad(x)
  end


  # 11.	Agregue un elemento a una lista en una posición dada.
  def agregar(e,[],_i) do
    [e]
  end
  def agregar(e,x,0) do
    [e | x]
  end
  def agregar(e,[x|xs],i) do
    [x | agregar(e,xs,i-1)]
  end


  # 12.	Agregue un elemento a una lista ordenada, en el lugar que le corresponda.
  def agregarOrdenada(e,[]) do
    [e]
  end
  def agregarOrdenada(e,[x|xs]) do
    cond do
      e > x -> [x | agregarOrdenada(e,xs)]
      true -> [e | [x | xs]]
    end
  end


  # 13.	Programa que calcule la sumatoria de las tres primeras potencias
  # (es decir el número, el número al cuadrado y al cubo) de un número dado.

  def sumaTresPotencias(x) do
    x + npotencia(x,2) + npotencia(x,3)
  end


  # 14.	Función que tome una lista y un elemento como argumentos,
  # y devuelva la lista original con todas las ocurrencias de dicho elemento eliminadas.
  def listaSinElem([x],_e) do
    [x]
  end
  def listaSinElem([x|xs],e) do
    cond do
      x == e -> listaSinElem(xs,e)
      true -> [x | listaSinElem(xs,e)]
    end
  end


  # 15.	Función "reemplazo", que tome una lista y dos elementos como argumentos,
  # y devuelva la lista original con todas las instancias del primer elemento reemplazadas por el segundo.
  def reemplazo([x],_a,_b) do
    [x]
  end
  def reemplazo([x|xs],a,b) do
    cond do
      x == a -> [b | reemplazo(xs,a,b)]
      true -> [x | reemplazo(xs,a,b)]
    end
  end


  # 16.	Escriba una función que devuelva el mínimo elemento de una lista.
  def minimo([x]) do
    x
  end
  def minimo([x|[y|xs]]) do
    cond do
      x < y -> minimo([x|xs])
      true -> minimo([y|xs])
    end
  end

  # 17.	Escriba una función que devuelva el máximo elemento de una lista.
  def maximo([x]) do
    x
  end
  def maximo([x|[y|xs]]) do
    cond do
      x > y -> maximo([x|xs])
      true -> maximo([y|xs])
    end
  end

  # 18.	Defina una función que tome una lista de números y devuelva una 3-upla formada por el promedio, el máximo y el mínimo de la lista.


end
