defmodule Sigils.CustomSigil do
  @moduledoc false
  def sigil_u(string, []), do: String.upcase(string)
end
