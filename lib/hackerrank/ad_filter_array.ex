defmodule Hackerrank.SolveMeFirstFP do
  @moduledoc """
  https://www.hackerrank.com/challenges/fp-filter-array/problem?isFullScreen=true
  """

  def run do
    x =
      IO.gets("")
      |> String.trim()
      |> String.to_integer()

    list =
      IO.stream(:stdio, :line)
      |> Enum.map(&String.trim/1)
      |> Enum.map(&String.to_integer/1)
      |> Enum.to_list()

    filter_array(list, [], &(&1 < x))
      |> Enum.each &IO.puts/1
  end

  def filter_array([ head | tail ], new_list, predicate) do
    if predicate.(head) do
      filter_array(tail, [head | new_list], predicate)
    else
      filter_array(tail, new_list, predicate)
    end
  end
  def filter_array([], new_list, _predicate), do: Enum.reverse new_list

end
