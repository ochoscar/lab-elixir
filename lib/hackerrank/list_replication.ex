defmodule ListReplication do
  @moduledoc """
  https://www.hackerrank.com/challenges/fp-list-replication/problem?isFullScreen=true
  """

  def run() do
    n =
      IO.gets("")
      |> String.trim()
      |> String.to_integer()

    list =
      IO.stream(:stdio, :line)
      |> Enum.map(&String.trim/1)
      |> Enum.map(&String.to_integer/1)
      |> Enum.to_list()

    replicate(n, list)
    |> Enum.each(&IO.puts/1)
  end

  def replicate(_, []), do: []

  def replicate(n, [head | tail]) do
    List.duplicate(head, n) ++ replicate(n, tail)
  end
end

ListReplication.run()
