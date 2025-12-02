# Nivel 5 - Ejercicios
## 5.1 – Lógica compleja

44. Escriba una función que dada una lista de números y un número N, devuelva la lista resultante de eliminar los N números más cercanos al promedio de la lista de entrada. 
    
        Ej: si la lista es (1 6 34 2 3 55 4 1 12) y N = 5, el promedio es 13.1, por lo cual se deberán eliminar los números 12, 6, 4, 3 y 2, y el resultado será (1 34 55 1).

45. Realice una función que tome como parámetro una lista y devuelva otra lista con los elementos de la primera ordenados de menor a mayor,  aplicando:
    - Ordenamiento elemental de selección. 
    - Ordenamiento "burbujas" (intercalación). 
    - QuickSort. 
    - HeapSort. 

46. Escriba una función que tome una lista de números y un número N, y devuelva la lista resultado de eliminar los N números mayores de la lista de entrada.

        Ej: si la lista es  (1 6 34 2 3 55 4 1 12)  y N = 4, el resultado es (1 2 3 4 1).

47.	Escriba una función que tome como entradas una lista L y un número N, y devuelve los N elementos del centro de L. Observación: si la cantidad de elementos de L es un número par, se considera que el número N ingresado también será par, y viceversa.

        Ej: para L = (3 2 4 7 11 2 3 4) y N = 4, el resultado será (4 7 11 2).

48.	Escriba una función que tome una lista y devuelva una lista de pares (número frecuencia), ordenados de mayor a menor de acuerdo a esta última. La frecuencia correspondiente a cada número es la cantidad de veces que el número aparece en la lista. 

49.	Dada una lista de números y un número, escriba una función que divida a la lista en rangos de acuerdo al número ingresado.

        Ej: para (8 5 7 13 2 21 16) y 4 se forman cuatro rangos y se crea la lista ( (2 5) (7 8) (13 16) (21) ).

50.	Escriba una función que determine si una lista es prefijo, postfijo, infijo o no cumple con ninguna de estas relaciones respecto a otra lista dada.

51.	Escriba una función que dada una lista de números L, devuelva la lista de todos los pares de números de L tales que el primer número sea divisor (distinto) del segundo.

        Ej: si la lista es  (3 6 2 10 5), el resultado será ((3 6) (2 6) (2 10) (5 10)).


## 5.2 – Procesamiento de listas con sublistas

52.	Escriba una función que determine la cantidad de listas que contiene una lista con sublistas (incluyendo la principal).

53.	Escriba una función “Evaluar” que tome una expresión aritmética en notación prefijo, representada mediante una lista anidada, y devuelva su resultado. Solo se permiten los operadores +, - y \*. Cada subexpresión contiene dos operandos.

        Ej: (Evaluar '(* (+ 4 6) 4)) debería devolver 40.

54.	Escriba una función que transforme una lista con sublistas en una lista lineal.

55.	Escriba una función que, dadas dos listas numéricas determine si todos los elementos de la primera se encuentran dentro del rango de números de la segunda. Considere que esta última puede contener sublistas.

56.	Escriba una función que, dadas dos listas determine cuantos elementos iguales tienen. Ambas listas pueden contener sublistas.

57.	Escriba una función que calcule la cantidad de números que tiene una lista (considerando que puede haber números en sublistas de la lista principal).

58.	Escriba una función Promedio, que devuelva la media aritmética de una lista, incluyendo en el mismo los elementos de posibles sublistas.

59.	Escriba una función que tome dos listas y determine si todos los elementos de la primera están también en la segunda. Considere que esta última puede contener  sublistas.

60.	Escriba una función que tome como entrada una lista L y un elemento N, y determine la “Profundidad” de la primera ocurrencia del elemento en la lista. Si el número no existe, su profundidad es 0; si está en el primer nivel es 1, y así sucesivamente.

        Ej: L = (  3   (5 6)   ( (5) (7 3) )  ),  N=7,  Profundidad de N en L = 3

61.	Escriba una función que tome como entrada un árbol binario y devuelva la lista resultado del recorrido del árbol en preorden.

62.	Escriba una función que determine en qué nivel se encuentra la primera ocurrencia de un número N dentro de una lista con sublistas. Si el elemento no está, devolver 0.

        Ej: si la lista es ( (3 9) 34 ( 6  (2 8) ( (4) 12 ) ) 1 )  y N = 2, el resultado es 3 (tercer nivel  de profundidad).

## 5.3 – Procesamiento complejo de listas con sublistas

63.	Escriba una función que tome como entrada una lista L y devuelva otra lista, con todas las sublistas prefijos de L. 

        Ej: (3 2 6 5) dará como resultado (() (3) (3 2) (3 2 6) (3 2 6 5)).

64.	Escriba una función que tome como entrada dos listas de números y devuelva la lista de las posiciones de los elementos de la primera, en la segunda (tomando solo la primer ocurrencia). Si el número buscado no existe en la segunda lista, en la lista resultante se pondrá 0. La segunda lista puede contener sublistas.

        Ej: L1=(3 6 4 8 7), L2=( 2 7 (5 3 10 (6 13( 11) 4 6) dará como resultado (4 6 9 0 2).

65.	Escriba una función que transforme una lista L con sublistas de distintos niveles, en una lista donde todas las sublistas de L se encuentran en el nivel 1.

        Ej: para (1 (2 3) ((4) 5 6 (7 8)) 9 (10 11)) debería devolver la lista ((1 9) (2 3) (5 6) (4) (7 8) (10 11)).

66.	Escriba una función que tome como entrada una lista L -con sublistas- y un número N, y devuelva la lista de los N elementos de L más alejados del promedio.

        Ej: L=((2 4 10) 2 4 (9 (2 0) 7) 23 13), y N=3, el resultado será (23 0 13).

67.	Escriba una función que dada una lista de la forma ((código valor1 valor2...) (código valor1 valor2... ) ... (código valor1 valor2...)), una todas las sublistas que poseen el mismo código en una sola sublista que aparezca como un elemento de la lista resultante. Cada sublista tanto de la lista original como de la resultante, poseerá como primer elemento el código, y luego al menos un valor. 

        Ej: ((2 35 3 2) (1 4 3) (2 5 5) (2 1) (1 6)) dará como resultado ((2 35 3 2 5 5 1) (1 4 3 6)).
