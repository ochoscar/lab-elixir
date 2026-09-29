defmodule SolutionAJUpdateList do
    # https://www.hackerrank.com/challenges/fp-update-list/problem?isFullScreen=true

    def run() do
        IO.stream(:stdio, :line)
        |> Enum.map(&String.trim/1)
        |> Enum.map(&String.to_integer/1)
        |> absolute()
        |> Enum.each(&IO.puts/1)
    end

    def absolute(list), do: absolute(list, [])
    def absolute([head | tail], new_list), do: absolute(tail, [abs(head) | new_list])
    def absolute([], new_list), do: Enum.reverse new_list

end

SolutionAJUpdateList.run()
