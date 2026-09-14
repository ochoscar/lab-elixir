defmodule Solution do
    @moduledoc """
    https://www.hackerrank.com/challenges/fp-reverse-a-list/problem?isFullScreen=true
    """

    def main do
        list =
            IO.stream(:stdio, :line)
            |> Enum.map(&String.trim/1)
            |> reverse()
            |> Enum.each(&IO.puts/1)
    end

    def reverse(list), do: reverse(list, [])
    def reverse([head | tail], reversed), do: reverse(tail, [head | reversed])
    def reverse([], reversed), do: reversed

end

Solution.main
