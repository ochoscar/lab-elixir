defmodule Loops.EnumsBasic do
  @moduledoc false

  # All
  res = Enum.all?([1, 2, 3, 4], fn(s) -> rem(s,2) == 1 end)
  IO.puts(res)

  # Any
  res = Enum.any?([1, 2, 3, 4], fn(s) -> rem(s,2) == 1 end)
  IO.puts(res)

  # Chunk
  res = Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)
  IO.puts(res)

  # Each
  Enum.each(["Hello", "Every", "one"], fn(s) -> IO.puts(s) end)

  # Map
  res = Enum.map([2, 5, 3, 6], fn(a) -> a*2 end)
  IO.puts(res)

  # Reduce
  res = Enum.reduce([1, 2, 3, 4], 5, fn(x, accum) -> x + accum end)
  IO.puts(res)

  # Uniq
  res = Enum.uniq([1, 2, 2, 3, 3, 3, 4, 4, 4, 4])
  IO.puts(res)

  # Eager and pipe
  odd? = &(rem(&1, 2) != 0)
  res = 1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum
  IO.puts(res)

  res = Enum.sum(Enum.filter(Enum.map(1..100_000, &(&1 * 3)), odd?))
  IO.puts(res)

  # Stream
  odd? = &(rem(&1, 2) != 0)
  res = 1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum
  IO.puts(res)

end
