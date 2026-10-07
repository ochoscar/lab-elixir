defmodule Hackerrank.Ex do
    # https://www.hackerrank.com/challenges/eval-ex/problem?isFullScreen=true

    def run() do
        n =
            IO.gets("")
            |> String.trim()
            |> String.to_integer()
        compute_ex(n)
    end

    def compute_ex(0), do: nil
    def compute_ex(n) do
        x =
            IO.gets("")
            |> String.trim()
            |> String.to_float()
        e(x) |> IO.puts()
        compute_ex(n - 1)
    end

    def e(x), do: e(x, 0, 0)
    def e(_x, acc, 10), do: acc
    def e(x, acc, term) do
        #IO.puts(":math.pow(#{x}, #{term - 1}) #{:math.pow(x, term - 1)}")
        e(
            x,
            (acc + (:math.pow(x, term)/fact(term))),
            term + 1
        )
    end

    def fact(0), do: 1
    def fact(n), do: n * fact(n - 1)
end

Hackerrank.Ex.run()
