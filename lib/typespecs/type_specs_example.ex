defmodule Typespecs.TypeSpecsExample do
  @moduledoc false

  {result, comment} = FunnyCalculator.add(10, 20)
  IO.puts(result)
  IO.puts(comment)
end
