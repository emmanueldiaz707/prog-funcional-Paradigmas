defmodule Ej2 do

  # Defina una función que determine el valor absoluto de un número.
  def valorAbsoluto(x) do
    cond do
      x<0 -> -x
      true -> x
    end

  end
end

IO.puts("El valor absoluto es: #{Ej2.valorAbsoluto(-8)}")
