defmodule Functions.RecursionExample do
  @moduledoc false

  defmodule Math do
    def fact(res, num) do
      if num === 1 do
        res
      else
        new_res = res * num
        fact(new_res, num-1)
      end
    end
  end

  IO.puts(Math.fact(1,5))




  a = ["Hey", 100, 452, :true, "People"]
  defmodule ListPrint do
    def print([]) do
    end
    def print([head | tail]) do
      IO.puts(head)
      print(tail)
    end
  end

  ListPrint.print(a)

end
