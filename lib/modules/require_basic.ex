defmodule Modules.RequireBasic do
  @moduledoc false

  # Ensure the module is compiled and available (usually for macros)
  require Integer
  IO.puts(Integer.is_odd(3))

end
