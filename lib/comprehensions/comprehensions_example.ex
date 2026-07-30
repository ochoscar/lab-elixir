defmodule Comprehensions.ComprehensionsExample do
  @moduledoc false

  #Enum.map(1..3, &(&1 * 2))
  for n <- 1..3, do: IO.puts n * 2

  import Integer
  IO.puts(for x <- 65..90, is_even(x), do: x)

  IO.puts(for <<c <- " hello world ">>, c != ?\s, into: "", do: <<c>>)
end
