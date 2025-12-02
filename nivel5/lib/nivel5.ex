defmodule Nivel5 do

    # 44. Dada una lista y un nro N, devolver la lista resultante de eliminar los N nros más cercanos al promedio de la lista original.

    # Sumatoria
    def sum([]), do: 0
    def sum([x|xs]) do
      x + sum(xs)
    end

    # Cantidad de elementos
    def cant([]), do: 0
    def cant([_x|xs]) do
        1 + cant(xs)
    end

    # Promedio
    def prom(lista) do
      sum(lista)/cant(lista)
    end

    # Distancia
    def d(a,b) do
        abs(a-b)
    end

    # Lista de pares [x, distancia(x,z)]
    def listad([],_z), do: []
    def listad([x|xs],z) do
        [[x,d(x,z)] | listad(xs,z)]
    end

    # Hallar par con distancia mínima
    def minimad([x|xs]), do: minimad([x|xs], x)
    def minimad([], menor), do: menor
    def minimad([[a,b]|xs], [i,j]) do
        cond do
            b < j -> minimad(xs, [a,b])
            true -> minimad(xs, [i,j])
        end
    end

    # Eliminar primer ocurrencia de un elemento
    def elimElem([],_elem), do: [] # por si no lo encuentra?
    def elimElem([x|xs],elem) do
        cond do
          x === elem -> xs
          true -> [x | elimElem(xs,elem)]
        end
    end



    def hallarNCercProm(listaPares, n), do: hallarNCercProm(listaPares, n, [])
    def hallarNCercProm(_listaPares, 0, acum), do: acum
    def hallarNCercProm(listaPares, n, acum) do
      minimo = minimad(listaPares)
      [nro, _dist] = minimo

      hallarNCercProm(elimElem(listaPares, minimo), n-1, [nro | acum])

    end

    def eliminarElementos(listaOriginal, []), do: listaOriginal
    def eliminarElementos(listaOriginal, [x|xs]) do
      eliminarElementos(elimElem(listaOriginal, x), xs)
    end


    def eliminarNCercProm(lista,n) do
      eliminarElementos(lista, hallarNCercProm(listad(lista, prom(lista)), n))
    end

end
