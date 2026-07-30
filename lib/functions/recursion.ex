defmodule Functions.Recursion do
  @moduledoc false

  def fact(res, num) do
    if num === 1 do
      res
    else
      new_res = res * num
      fact(new_res, num-1)
    end
  end

  def print([]) do
  end

  def print([head | tail]) do
    IO.puts(head)
    print(tail)
  end

end

IO.puts(Functions.Recursion.fact(1,5))

a = ["Hey", 100, 452, :true, "People"]
Functions.Recursion.print(a)
