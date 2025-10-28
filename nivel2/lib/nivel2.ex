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
  def iesimo([x|_],0) do
    x
  end
  def iesimo([x|xs],i) do
    iesimo(xs,i-1)
  end



  # 8.	Elimine el i-ésimo elemento de una lista.




  # 9.	Escriba una función llamada “Existe” que indique si un objeto se encuentra dentro de una lista determinada.


  # 10.	Escriba una función que determine la Media de una lista de números.


  # 11.	Agregue un elemento a una lista en una posición dada.


  # 12.	Agregue un elemento a una lista ordenada, en el lugar que le corresponda.


  # 13.	Realice un programa que calcule la sumatoria de las tres primeras potencias (es decir el número, el número al cuadrado y al cubo) de un número dado.


  # 14.	Escriba una función que tome una lista y un elemento como argumentos, y devuelva la lista original con todas las ocurrencias de dicho elemento eliminadas.


  # 15.	Escriba una función llamada "reemplazo", que tome una lista y dos elementos como argumentos, y devuelva la lista original con todas las instancias del primer elemento reemplazadas por el segundo.


  # 16.	Escriba una función que devuelva el mínimo elemento de una lista.


  # 17.	Escriba una función que devuelva el máximo elemento de una lista.


  # 18.	Defina una función que tome una lista de números y devuelva una 3-upla formada por el promedio, el máximo y el mínimo de la lista.


end

# Pruebas

# 4. n-potencia
IO.puts("------------------------------")
IO.puts("Ejercicio 4: n-potencia")
IO.puts("5^0 = #{Nivel2.npotencia(5,0)}")
IO.puts("5^1 = #{Nivel2.npotencia(5,1)}")
IO.puts("5^2 = #{Nivel2.npotencia(5,2)}")
IO.puts("5^5 = #{Nivel2.npotencia(5,5)}")
IO.puts("5^-3 = #{Nivel2.npotencia(5,-3)}")

# 5. Cantidad de elementos de una lista
IO.puts("------------------------------")
IO.puts("Ejercicio 5: cantidad de elementos de una lista")
IO.puts("[:a,:t,:e,:c] tiene #{Nivel2.cantidad([:a,:t,:e,:c])} elementos")

# 6. Sumatoria de elementos de una lista
IO.puts("------------------------------")
IO.puts("Ejercicio 6: sumatoria de elementos de una lista")
IO.puts("La sumatoria de [1,2,3,4,5] es = #{Nivel2.sumatoria([1,2,3,4,5])}")

# 7. i-ésimo elemento de una lista
IO.puts("------------------------------")
IO.puts("Ejercicio 7: i-ésimo elemento de una lista")
IO.puts("El elemento 3 de [:a,:b,:c,:d,:e] es #{Nivel2.iesimo([:a,:b,:c,:d,:e],3)}")
