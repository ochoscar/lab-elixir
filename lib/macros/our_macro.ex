defmodule Macros.OurMacro do
  @moduledoc false
  defmacro unless(expr, do: block) do
    quote do
      if !unquote(expr), do: unquote(block)
    end
  end
end
