defmodule Algorithms do
  @moduledoc false

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

end
