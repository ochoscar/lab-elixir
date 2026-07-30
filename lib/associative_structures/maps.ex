defmodule AssociativeStructures.Maps do
  @moduledoc false

  # Maps are solution for key values, with a list Elixir continue using linked list
  # and walkin through the list when a key is requested

  # Creating a getting elements using maps
  map = %{:a => 1, 2 => :b}
  IO.puts(map[:a])
  IO.puts(map[2])

  # Inserting a key
  map = %{:a => 1, 2 => :b}
  new_map = Map.put_new(map, :new_val, "value")
  IO.puts(new_map[:new_val])

  # Updating a value
  map = %{:a => 1, 2 => :b}
  new_map = %{ map | a: 25}
  IO.puts(new_map[:a])

  # Pattern matching
  %{:a => a} = %{:a => 1, 2 => :b}
  IO.puts(a)

  n = 1
  _map = %{n => :one}
  %{^n => :one} = %{1 => :one, 2 => :two, 3 => :three}

  # Maps with atoms
  map = %{:a => 1, 2 => :b}
  IO.puts(map.a)

end
