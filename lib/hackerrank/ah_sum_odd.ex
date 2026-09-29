defmodule SolutionSumOdd do
    # https://www.hackerrank.com/challenges/fp-sum-of-odd-elements/problem?isFullScreen=true

    def run() do
        list =
            IO.stream(:stdio, :line)
            |> Enum.map(&String.trim/1)
            |> Enum.map(&String.to_integer/1)

        list |> sum_odd() |> IO.puts()
    end

    def sum_odd(list), do: sum_odd(list, 0)
    def sum_odd([ head | tail], acc) when rem(head, 2) != 0, do: sum_odd(tail, acc + head)
    def sum_odd([ _head | tail], acc), do: sum_odd(tail, acc)
    def sum_odd([], acc), do: acc

end

SolutionSumOdd.run()
