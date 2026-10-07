defmodule Hackerrank.Area do
    # https://www.hackerrank.com/challenges/area-under-curves-and-volume-of-revolving-a-curv/problem?isFullScreen=true

    @interval_length 0.001

    def run() do
        a = parse_line()
        b = parse_line()
        limits = parse_line()

        compute_area(a, b, limits) |> IO.puts()
        compute_volume(a, b, limits) |> IO.puts()
    end

    def compute_area(a, b, [l, r]) do
        compute_area(a, b, [l, r], l, 0)
    end
    def compute_area(a, b, [l, r], i, acc) when i <= r do
        next_i = i + @interval_length
        next_acc = acc + p(a, b, i) * @interval_length
        compute_area(a, b, [l, r], next_i, next_acc)
    end
    def compute_area(_a, _b, [_l, r], i, acc) when i > r do
        acc
    end

    def compute_volume(a, b, [l, r]), do: compute_volume(a, b, [l, r], l, 0)
    def compute_volume(a, b, [l, r], i, acc) when i <= r do
        next_i = i + @interval_length
        next_acc = acc + :math.pow(p(a, b, i), 2) * :math.pi * @interval_length
        compute_volume(a, b, [l, r], next_i, next_acc)
    end
    def compute_volume(_a, _b, [_l, r], i, acc) when i > r do
        acc
    end

    def p(a, b, x),
    do: p(a, b, x, 0)
    def p([a_head | a_tail], [b_head | b_tail], x, acc) do
        current = a_head * :math.pow(x, b_head)
        p(a_tail, b_tail, x, acc + current)
    end
    def p([], [], _x, acc), do: acc

    def parse_line() do
        IO.gets("")
        |> String.trim()
        |> String.split()
        |> Enum.map(&String.to_integer/1)
    end

end

Hackerrank.Area.run()
