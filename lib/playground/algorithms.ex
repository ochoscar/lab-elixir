defmodule Playground.Algorithms do
  @moduledoc false

  # ---- Binary search
  @spec guess(integer(), Range.t()) :: :ok
  def guess(n, lower_limit..upper_limit//_), do: guess(n, div(lower_limit + upper_limit, 2), lower_limit..upper_limit)
  def guess(n, alg_n, lower_limit.._upper_limit//_) when n < alg_n do
    IO.puts("Is it #{alg_n}")
    guess(n, div(alg_n + lower_limit, 2), lower_limit..alg_n)
  end
  def guess(n, alg_n, _lower_limit..upper_limit//_) when n > alg_n do
    IO.puts("Is it #{alg_n}")
    guess(n, div(alg_n + upper_limit, 2), alg_n..upper_limit)
  end
  def guess(n, n, _), do: IO.puts("Is #{n}")

  # ---- map sum
  def mapsum(list, func), do: mapsum(list, 0, func)
  def mapsum([ head | tail ], acc, func), do: mapsum(tail, acc + func.(head), func)
  def mapsum([], acc, _func), do: acc

  # ---- max
  def maxlist(list), do: maxlist(list, -9999)
  def maxlist([ head | tail ], max_value) when head > max_value, do: maxlist(tail, head)
  def maxlist([ _head | tail ], max_value), do: maxlist(tail, max_value)
  def maxlist([], max_value), do: max_value

  # ---- caesar cypher
  def caesar([ head | tail ], offset), do: caesar(tail, [ head + offset ], offset)
  def caesar([ head | tail ], cypher, offset), do: caesar(tail, [ cypher | [head + offset] ], offset)
  def caesar([], cypher, _offset), do: cypher

  # ---- span
  def span(from, to), do: span(from, to, [from])
  def span(from, to, span_list) when from < to, do: span(from + 1, to, span_list ++ [ from + 1])
  def span(from, to, span_list) when from === to, do: span_list

  # ---- own all?
  def all?([ head | tail ], fun), do: fun.(head) and all?(tail, fun)
  def all?([], _fun), do: true

  # ---- own each
  def each([ head | tail ], func) do
    func.(head)
    each(tail, func)
  end
  def each([], _func), do: :ok

  # ---- own filter
  def filter([ head | tail ], func) do
    if func.(head) do
      [ head | filter(tail, func) ]
    else
      filter(tail, func)
    end
  end
  def filter([], _func), do: []

  # ---- own split
  def split(list, n), do: split(list, n, 0, [], [])
  def split([ head | tail ], n, acc, left, right) do
    cond do
      n > acc ->
        split(tail, n, acc + 1, [head | left], right)

      n <= acc ->
        split([], n, acc + 1, left, [ head | tail ])
    end
  end
  def split([], _n, _acc, left, right), do: [Enum.reverse(left), right]

  # ---- own take
  def take(list, n), do: take(list, n, 0, [])
  def take([ head | tail ], n, acc, list_n) when acc < n do
     take(tail, n, acc + 1, [ head | list_n ])
  end
  def take([ _head | _tail ], n, acc, list_n) when acc == n do
     Enum.reverse list_n
  end

  # ---- own flatten flatten([1, [ 2, 3, [ 4 ] ], 5, [[[6]]] ]) = [1,2,3,4,5,6]
  def flatten(list), do: Enum.reverse(flatten(list, []))
  def flatten([[] | tail], flist), do: flatten(tail, flist)
  def flatten([ head | tail ], flist) when is_list(head) do
    [ hh | ht ] = head
    hhflist = flatten([ hh ], flist)
    htflist = flatten(ht, hhflist)
    flatten(tail, htflist)
  end
  def flatten([ head | tail ], flist) when not is_list(head) do
    flatten(tail, [head | flist])
  end
  def flatten([], flist), do: flist

end
