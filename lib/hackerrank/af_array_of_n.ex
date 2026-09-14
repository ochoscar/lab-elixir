defmodule Solution do
    @moduledoc """
    https://www.hackerrank.com/challenges/fp-array-of-n-elements/problem?isFullScreen=true
    """

    def main do
        n = IO.gets("")
            |> String.trim()
            |> String.to_integer()

        list = build_list(n)
               |> Enum.join(",")

        IO.puts(list)
    end

    def build_list(n), do: Enum.reverse build_list(n, 0, [])
    def build_list(0, _index, list), do: list
    def build_list(n, index, list), do: build_list(n - 1, index + 1, [ index | list ])

end

Solution.main
