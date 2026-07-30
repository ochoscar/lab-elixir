defmodule DataTypes do
  @moduledoc """
  Documentation for `DataTypes`.
  """

  @doc """
  Data types

  ## Numerical Types
    Octal Oo, Hex Ox, Binary Ob
  ## Atoms
    Constants with value named :hello
  ## Booleans
    true and false values or respective atoms
  ## Strings
    Values enclosed in double o triple quotes
  ## Binaries
    List o binaries by default 8 bits << 65, 68, 75>> or specified arbitrary lenght <<65, 255, 289::size(15)>>
  ## List
    List using linked list
    [1, "Hello", :an_atom, true]
  ## Tuples
    List using array
    { 1, "Hello", :an_atom, true }
  """

  life = 42
  IO.puts "Hello my name is ochoscar"
  IO.puts life

end
