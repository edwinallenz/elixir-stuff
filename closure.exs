mrs = fn prefix ->
  fn name ->
    "#{prefix} #{name}"
  end
end

complete = mrs.("Fred")
final = complete.("Allen")

IO.puts(final)

IO.puts(mrs.("Awesome").("Elixir"))
