
defmodule FilterPosition do
  @moduledoc """
  https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list/problem?isFullScreen=true
  """

  def run do
    list =
      IO.stream(:stdio, :line)
      |> Enum.map(&String.trim/1)
      |> Enum.map(&String.to_integer/1)
      |> Enum.to_list()

    list
      |> filter_position
      |> Enum.each(&IO.puts/1)
  end

  def filter_position(list), do: Enum.reverse filter_position(list, [], 0)
  def filter_position([ _head | tail ], new_list, index) when rem(index, 2) == 0 do
    filter_position(tail, new_list, index + 1)
  end
  def filter_position([ head | tail ], new_list, index) when rem(index, 2) != 0 do
    filter_position(tail, [ head | new_list ], index + 1)
  end
  def filter_position([], new_list, _index), do: new_list
end
