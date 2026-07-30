defmodule Modules.AliasBasic do
  @moduledoc false
  # Alias the module so it can be called as Bar instead of Foo.Bar
  #alias Foo.Bar, as: Bar

  alias String, as: Str
  IO.puts(Str.length("Hello"))

  alias List, as: String
  #Now when we use String we are actually using List.
  IO.inspect(String)
  #To use the string module:
  IO.puts(Elixir.String.length("Hello"))
end
