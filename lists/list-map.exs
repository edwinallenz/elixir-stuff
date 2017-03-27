defmodule ListMap do
  def map([], _funct), do: []
  def map([head|tail],funct), do: [funct.(head) | map(tail, funct)]
  #Ex. multipy list elements by two ListMap.map([2,2,4,4], &(&1*2))

end
