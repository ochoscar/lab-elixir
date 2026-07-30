defmodule ModulesExample.MainModule do
  @moduledoc false
  require ModulesExample.MathExamples
  alias String, as: Str

  IO.puts(Str.length("Hello"))
  IO.puts(ModulesExample.MathExamples.sum(1, 2))

end
