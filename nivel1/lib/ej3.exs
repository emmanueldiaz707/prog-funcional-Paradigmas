defmodule Ej3 do
  # Defina una función que realice el siguiente cálculo, para el parámetro n:
  # F(n) = n * (n - 1) / 2.

  def miFuncion(n) do
    n * (n-1) / 2
  end
end


IO.puts("El resultado es: #{Ej3.miFuncion(9)}")
