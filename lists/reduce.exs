defmodule ListActions do

  def reduce([], value, _ ), do: value
  def reduce([head | tail], value, funct) do
    reduce(tail, funct.(head, value), funct)
  end
  #Ex1 -> ListActions.reduce([1,2,3,4],0, &(&1+&2)) 10
  #Ex2 -> ListActions.reduce([1,2,3,4],1, &(&1*&2)) 24
end


