defmodule SolutionAILength do
  # https://www.hackerrank.com/challenges/fp-list-length/problem?isFullScreen=true

    def run() do
        list =
            IO.stream(:stdio, :line)
            |> Enum.map(&String.trim/1)

        list |> my_length() |> IO.puts()
    end

    def my_length(list), do: my_length(list, 0)
    def my_length([ _head | tail ], acc), do: my_length(tail, acc + 1)
    def my_length([], acc), do: acc
end

SolutionAILength.run()
