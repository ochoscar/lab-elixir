defmodule Operators.PatternMatching do
  @moduledoc false

  # Basic pattern matching
  _x = 12
  x = "Hello"
  IO.puts(x)

  # Matching with structure
  [{var_1}, _unused_var, var_2] = [{"First variable"}, 25, "Second variable" ]
  IO.puts(var_1)
  IO.puts(var_2)

  # Matching a complex case
  [_, [_, {a}]] = ["Random string", [:an_atom, {24}]]
  IO.puts(a)

  # With pin operator
  a = 25
  b = 25
  ^a = b

end
