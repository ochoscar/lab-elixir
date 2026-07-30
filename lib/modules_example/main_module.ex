defmodule MainModule do
  @moduledoc false
  require MathExamples
  alias String, as: Str

  IO.puts(Str.length("Hello"))
  IO.puts(MathExamples.sum(1, 2))

end
