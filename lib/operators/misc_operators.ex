defmodule Operators.MiscOperators do
  @moduledoc false

  # Concatenation
  IO.puts("Hello"<>" "<>"world")

  # Pipe operator
  (4+3) |> IO.puts

  # String match
  IO.puts("tutorialspoint" =~ "poi")
  IO.puts("tutorialspoint" =~ ~r/[a-z]*/)
  IO.puts("tutorialspoint" =~ ~r/[0-9]*/)

  # Code point (UTF-8 representation)
  IO.puts(?a)
  IO.puts(?\s)

  # Ternary
  _a = if true, do: "True!", else: "False!"

  # In
  :yes in [:true, :false, :yes]

end
