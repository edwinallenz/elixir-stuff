defmodule Chop do
  def guess(actual, range) do
    low..high = range
    guess = div(high, 2)
    range_loop(guess, actual, range)
  end
  def gen(range) do
    Enum.random range
  end
  def range_loop(guess, actual, range) when guess == actual do
    IO.puts actual
  end
  def range_loop(guess, actual, range) when guess < actual do
    IO.puts "Is greater than #{guess}"
    low..high = range
    new_range = guess..high
    guess = gen new_range
    range_loop(guess, actual, new_range)
  end
  def range_loop(guess, actual, range) when guess >= actual do
    IO.puts "Is lower than #{guess}"
    low..high = range
    new_range = low..guess
    guess = gen new_range
    range_loop(guess, actual, new_range)
  end
end
