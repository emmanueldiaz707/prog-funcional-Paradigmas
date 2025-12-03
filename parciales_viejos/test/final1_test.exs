defmodule Final1Test do
  use ExUnit.Case
  doctest Final1

  test "Final 1: reordenar lista con sublista" do
    assert Final1.reordenar([2, 8, [3, 1], 2, [7, 3, 10, [4, 2], 9, [1]], 4]) == [2, 8, 2, 4, [3, 1], [7, 3, 10, 9, [4, 2], [1]]]
  end
end
