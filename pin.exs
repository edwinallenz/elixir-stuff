defmodule Greeter do

  def for(name, greeting) do
        fn
          (^name) -> "#{greeting} #{name}"
          (_)     -> "I dont know you"
        end
      end
end

say_hi = Greeter.for("fred", "Hello")
IO.puts say_hi.("fred")
IO.puts say_hi.("bamaca")

good_world = Greeter.for("world", "hello")

IO.puts good_world.("hello")
IO.puts good_world.("world")
