defmodule Nivel3 do


  # 19.	Función que calcule el i-ésimo número perfecto
    # (los números perfectos son aquellos que son iguales a la suma de sus divisores.

  def esDivisor(dividendo,divisor) do
    rem(dividendo,divisor) == 0
  end

  def sumatoriaDivisoresPropios(nro) do
    sumatoriaDivisoresPropios(nro,1)
  end
  def sumatoriaDivisoresPropios(nro,inicial) do
    cond do
      inicial >= nro -> 0
      esDivisor(nro,inicial) -> inicial + sumatoriaDivisoresPropios(nro,inicial+1)
      true -> sumatoriaDivisoresPropios(nro,inicial+1)
    end
  end

  def esPerfecto(nro) do
    nro == sumatoriaDivisoresPropios(nro)
  end

  def iesimoPerfecto(i) do
    iesimoPerfecto(i,1)
  end
  def iesimoPerfecto(i,inicial) do
    cond do
      i == 1 and esPerfecto(inicial) -> inicial
      esPerfecto(inicial) -> iesimoPerfecto(i-1,inicial+1)
      true -> iesimoPerfecto(i,inicial+1)
    end
  end



  # def sumadivisores(num, valor_desde) do
  #   cond do
  #   valor_desde >= num -> 0
  #   esdivisor(valor_desde, num) -> valor_desde +  sumadivisores(num, valor_desde + 1)
  #   true -> sumadivisores(num, valor_desde + 1)
  #   end
  # end

  # #dominio: num natural
  # def esperfecto(num) do
  #   num == sumadivisores(num, 1)
  # end

  # #dominio: i natural, los numeros perfectos son naturales tambien
  # def iesimoperfectodesde(i, valor_desde) do
  #   cond do
  #     i == 1 and esperfecto(valor_desde) -> valor_desde
  #     esperfecto(valor_desde) -> iesimoperfectodesde(i-1, valor_desde + 1)
  #     true -> iesimoperfectodesde(i, valor_desde + 1)
  #   end
  # end

  # def iesimoperfecto(i) do
  #   iesimoperfectodesde(i,1)
  # end




  # 20.	Función que calcule los n primeros números primos y los devuelva en una lista.
  def esPrimo(nro) do
    esPrimo(nro,2,:math.sqrt(nro))
  end
  def esPrimo(nro,divisor,limite) do
    cond do
      divisor > limite -> true
      rem(nro,divisor) == 0 -> false
      true -> esPrimo(nro,divisor+1,limite)
    end
  end

  def buscarSiguientePrimo(i) do
    cond do
      esPrimo(i+1) -> i+1
      true -> buscarSiguientePrimo(i+1)
    end
  end

  def nPrimos(n) do
    nPrimos(n,2)
  end
  def nPrimos(n,i) do
    cond do
      n == 0 -> []
      esPrimo(i) -> [i | nPrimos(n-1,buscarSiguientePrimo(i))]
      true -> nPrimos(n,buscarSiguientePrimo(i))
    end
  end


  # 21.	Función que determine la Varianza de una lista de números:
    # Varianza = Sumatoria (Xi - Media)2 / (n - 1). Siendo Xi cada uno de los n elementos de la lista.
  def sumatoria([]) do
    0
  end
  def sumatoria([x|xs]) do
    x + sumatoria(xs)
  end

  def cantidad(([])) do
    0
  end
  def cantidad([_x|xs]) do
    1 + cantidad(xs)
  end


  def cuadrado(x) do
    x*x
  end

  def cuadradoDesviacionLista([],_media) do
    []
  end
  def cuadradoDesviacionLista([x|xs],media) do
    [cuadrado(x-media) | cuadradoDesviacionLista(xs,media)]
  end

  def varianza(lista) do
    varianza(lista,sumatoria(lista)/cantidad(lista),cantidad(lista))
  end
  def varianza(lista,media,n) do
    sumatoria(cuadradoDesviacionLista(lista,media)) / (n - 1)
  end


  # 22.	Función que calcule la Moda de una lista de números (el número que más se repite).
  def recuento(_elem,[]), do: 0
  def recuento(elem, [x | xs]) do
    cond do
      elem == x -> 1 + recuento(elem,xs)
      true -> recuento(elem,xs)
    end
  end

  def eliminarDuplicados([]), do: []
  def eliminarDuplicados([x|xs]) do
    cond do
      recuento(x,xs)>0 -> eliminarDuplicados(xs)
      true -> [x | eliminarDuplicados(xs)]
    end
  end


  # Comparar la cantidad de ocurrencias de los dos primeros elementos de la lista.
  # Descartar el que tenga menos ocurrencias y avanzar.
  def moda(lista) do
    moda(lista,eliminarDuplicados(lista))
  end
  def moda(_listaOriginal,[a]) do
    a
  end
  def moda(listaOriginal, [a, b | xs]) do
    cond do
      recuento(a,listaOriginal) >= recuento(b,listaOriginal) -> moda(listaOriginal,[a|xs])
      true -> moda(listaOriginal,[b|xs])
    end
  end



  # 23.	Función que devuelva la cantidad de números que contiene una lista.
 # def numerosLista([]), do: []
 # def numerosLista([x|xs]) do
 #   cond do
 #     is_number(x) -> [x | numerosLista(xs)]
 #     true -> numerosLista(xs)
 #   end
 # end
 # def cantidadNumeros(lista) do
 #   cantidad(numerosLista(lista))
 # end
def cantidadNumeros([]), do: 0
def cantidadNumeros([x|xs]) do
  cond do
    is_number(x) -> 1 + cantidadNumeros(xs)
    true -> cantidadNumeros(xs)
  end
end



  # 24.	Función que transforme un binario, expresado a través de una lista de {0,1}, en decimal.




  # 25.	Función que sume dos números binarios, expresados a través de dos listas de {0,1}.




  # 26.	Función que transforme un entero decimal a binario, expresado como lista de {0,1}.




  # 27.	Función llamada “Palíndromo” que indique si una lista es Palíndromo (capicúa).




  # 28.	Función que determine si una lista de {0,1}, donde cada 0 representa un paréntesis que abre y cada 1 un paréntesis que cierra, está balanceada (es decir, que cada 0 tiene su 1 correspondiente de acuerdo a las reglas que siguen los paréntesis). Ej: (001101) está balanceada y (1001010) no lo está.




  # 29.	Función que tome como entrada una lista de números entre el 1 y el 3, y devuelva un par ordenado con el número que mayor cantidad de veces aparece en la lista original y su frecuencia.




  # 30.	Función que,dado un número N, calcule el mayor valor de la serie de Fibonacci que sea menor que N. La serie está dada por: 0, 1, 1, 2, 3, 5, 8, 13, ... ; donde los  primeros números son 0 y 1, y los demás se calculan como la suma de los dos anteriores.




  # 31.	Función “intercalar” que intercale dos listas ordenadas manteniendo el orden definido por las mismas.




  # 32.	Función que tome una lista y elimine las repeticiones adyacentes de sus elementos.




  # 33.	Función que tome un número y una lista conteniendo los coeficientes de un polinomio y devuelva el resultado del mismo reemplazando el número por la variable:
    # Ej. para (2 5 4 50 3) y 3 el polinomio en x es  2 + 5 x + 4 x2 + 50 x3 + 3 x4 ,  donde x=3.




  # 34.	Dadas dos listas de números Función devuelva una tercera, cuyos elementos sean resultado del siguiente cálculo:
    # Parámetros: L1, L2 listas de números.
    # Resultado: L3 lista de números
    # L3(1) = L1(1)*L2(1) + L1(1)*L2(2) + ... + L1(1)*L2(N)
    # L3(2) = L1(2)*L2(1) + L1(2)*L2(2) + ... + L1(2)*L2(N)
    # . . . .
    # L3(M) = L1(M)*L2(1) + L1(M)*L2(2) + ... + L1(M)*L2(N)




  # 35.	Considere que cada conjunto se representa mediante una lista. Defina funciones para simular:
    # a.	Unión de conjuntos.
    # b.	Intersección de conjuntos.
    # c.	Diferencia de conjuntos.
    # d.	Diferencia simétrica de conjuntos.




  # 36.	Función que tome una lista como entrada y genere una nueva lista con la primera mitad de la lista original como segundo elemento y la segunda mitad como primer elemento.
    # (x1, x2, x3, x4, x5, x6)  -->  ( (x4, x5, x6), (x1, x2, x3) ).




  # 37.	Función que tome dos listas y determine si la secuencia de elementos de la primera se encuentra dentro de la segunda.




  # 38.	Función que tome como entrada tres listas y determine si la tercera se puede formar a partir de los elementos de las dos primeras.




end
