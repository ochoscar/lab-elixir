defmodule Macros.MacroExample do
  @moduledoc false

  require Macros.OurMacro

  Macros.OurMacro.unless true, do: IO.puts "True Expression"

  Macros.OurMacro.unless false, do: IO.puts "False expression"

end
