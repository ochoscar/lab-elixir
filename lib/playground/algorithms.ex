defmodule Algorithms do
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

end
