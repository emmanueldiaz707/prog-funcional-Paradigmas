# Parciales viejos
## Parcial 1 (2 de diciembre de 2024)
### Ejercicio 1
Escriba una función que tome como entrada una lista sin sublistas L y un número N, y devuelva una lista con los elementos de L que están en las posiciones múltiplos de N. Por ejemplo, si N=3, las posiciones serían 3, 6, 9, etc.

    Ej.:
    L = [4, 5, 9, 6, 12, 8, 6, 5, 4, 3, 2, 3, 5, 10]
    N = 3

    Resultado = [9, 8, 4, 3]

### Ejercicio 2
Escriba una función que, dada una lista con sublistas L, devuelva una lista donde el iésimo elemento representa la sumatoria de los números contenidos en nivel i de profunidad de L.

Si no hay elementos numéricos en un nivel específico, ese nivel tendrá valor 0 en la lista resultante.

    L = [1, [2, 3], [[4, 5], 6], [7, [8, [9]]]]

    Resultado = [1, 18, 17, 9]

## Parcial 2 (6 de febrero de 2025)
### Ejercicio 1
Escriba la función que tome como entrada una lista con sublistas de un solo nivel y una posición P, y elimine de cada sublista los elementos que están en la posición P.

    L = [[3, 8, 4, 2, 3], [1, 6, 3, 9, 8], [12, 15]]
    P = 3

    Resultado = [[3, 8, 2, 3], [1, 6, 9, 8], [12, 15]]

### Ejercicio 2
Escriba la función que tome como entrada una lista de pares ordenados y una lista de números (sin sublistas), y devuelva otra lista que contenga una sublista por cada par, donde cada sublista incluya los elementos de la lista de números que pertenecen a la secuencia aritmética definida por dicho par.  
Cada par (A, S) define una secuencia que comienza en A y aumenta en S unidades cada paso (A, A+S, A+2S, ...).  
Si S es negativo, la sublista correspondiente debe estar vacía.  
Cada número puede aparecer en múltiples sublistas 0 en ninguna.  
Los elementos en cada sublista deben mantener el orden de aparición en la lista original.

    Lista de pares = [[3, 2], [6, 0], [12, 3], [7, 1]]
    Lista de números = [4, 6, 4, 10, 3, 2, 5]

    Resultado = [[3, 5], [6], [], [10]]

# Finales/ejercicios
## Ejercicio 1
Escriba una función que tome como entrada una lista con sublistas L y reordene los elementos de la lista principal y cada sublista de tal manera que queden todos los números al principio y las listas al final (de la lista y cada sublista).

    L = [2, 8, [3, 1], 2, [7, 3, 10, [4, 2], 9, [1]], 4]

    Resultado = [2, 8, 2, 4, [3, 1], [7, 3, 10, 9, [4, 2], [1]]]

## Ejercicio 2
Escriba la función Coinciden, que tome como entrada una lista L de números (sin sublistas) y una lista M que contiene sublistas, y devuelva otra lista formada únicamente por sublistas de un solo nivel.  
Estas sublistas deben ser aquellas de M que incluyan todos los elementos de L en su nivel 1 (es decir, sin considerar elementos que estén dentro de sub- sublistas).

    L = [2, 6]
    M = [[6, 2, [1, 2], 3], [8, 6, 4], [2, [2, 2], 7, 5, 6], [9, 1, 6]]

    Resultado = [[6, 2, 3], [2, 7, 5, 6]]

## Ejercicio 3
Escriba una función que, dada una lista de sublistas de enteros, devuelva una nueva lista formada por todos los elementos de aquellas sublistas que sean estrictamente crecientes, intercalados de forma ordenada.

    L = [[1, 7], [5, 5], [3, 1], [], [4, 10, 15], [10]]

    Resultado = [1, 4, 7, 10, 10, 15]

    (las sublistas estrictamente crecientes son [1, 7], [], [4, 10, 15] y [10]).
  
## Ejercicio 4
Escriba una función que tome como entrada una lista con sublistas anidadas L y un número N, y devuelva la suma de todos los elementos que se encuentran exactamente en el nivel N.

    L = [1, [2, 3], [[4], 5], [[[6]]]]
    N = 2

    Resultado = 2 + 3 + 5 = 10

## Ejercicio 5
Escriba una función que tome como entrada una lista L con sublistas de la forma [legajo, listaNotas] que representan los legajos de los estudiantes inscriptos en un curso y la lista de sus notas en dicho curso.  
Devolver el legajo del estudiante de mayor promedio.  
Si un estudiante no rindió ningún examen la lista de notas estará vacía, y se considera que su nota es 0.

    L = [[1, [5, 4, 6]], [2, [8, 7]], [3, [4]], [4, [5, 9, 5, 3]]]

    Resultado = 2

    (el legajo 2 tiene notas 8 y 7, con promedio 7,5).