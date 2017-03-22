pattern_match = fn 
  {0, 0, _} -> "FizzBuzz"
  {0, _, _} -> "Buzz"
  {_, 0, _} -> "Fizz"
  {_, _, a} -> a
end

single_integer = fn d ->
  pattern_match.({rem(d,3), rem(d,5), d})
end


IO.puts [single_integer.(10), single_integer.(11), single_integer.(12), single_integer.(15)]
