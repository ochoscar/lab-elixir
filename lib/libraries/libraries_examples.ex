defmodule LibrariesExamples do
  @moduledoc false

  # Using Strings

  # UTF-8
  IO.puts(String.to_charlist("Ø"))

  # binary
  IO.puts(:binary.bin_to_list "Ø")

  # Crypto
  IO.puts(Base.encode16(:crypto.hash(:sha256, "Elixir")))

  # Digraph

  digraph = :digraph.new()
  coords = [{0.0, 0.0}, {1.0, 0.0}, {1.0, 1.0}]
  [v0, v1, v2] = (for c <- coords, do: :digraph.add_vertex(digraph, c))
  :digraph.add_edge(digraph, v0, v1)
  :digraph.add_edge(digraph, v1, v2)
  for point <- :digraph.get_short_path(digraph, v0, v2) do
    {x, y} = point
    IO.puts("#{x}, #{y}")
  end

  # Math module
  # Value of pi
  IO.puts(:math.pi())

  # Logarithm
  IO.puts(:math.log(7.694785265142018e23))

  # Exponentiation
  IO.puts(:math.exp(55.0))

  # Queue module
  q = :queue.new
  q = :queue.in("A", q)
  q = :queue.in("B", q)
  {{:value, val}, q} = :queue.out(q)
  IO.puts(val)
  {{:value, val}, q} = :queue.out(q)
  IO.puts(val)

end
